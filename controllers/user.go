package controllers
import (
    "net/http"
	"html/template"
	"github.com/julienschmidt/httprouter"
	"goweb1/model"
	"fmt"
)

type (  
    UserController struct{}
)

// user profile
type Profile struct {
	Name    string
	Hobbies []string
}

// user profiles
type Profiles []Profile

// context for templates
type Context struct {
    Title string
    Profiles Profiles
}


func (uc UserController) GetUser(w http.ResponseWriter, r *http.Request, _ httprouter.Params) {  
	
	data,_ := model.GetAll()
	fmt.Println(data)
	profiles := Profiles{
		Profile{"Jack", []string{"snowboarding", "croquet"}},
		Profile{"Jill", []string{"knitting", "minecraft"}},
	}
	
    context := Context{"User Profiles", profiles}
	// layout file must be the first parameter in ParseFiles!
	templates, err := template.ParseFiles(
		"views/layout.html",
		"views/view.html",
	)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	if err := templates.Execute(w, context); err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
	}
}