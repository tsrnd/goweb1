package model

import (
    "github.com/jinzhu/gorm"
)

type OrderItem struct {
    gorm.Model 
    Quantity  int `gorm:"not null"`
    Price  int `gorm:"not null"`
	ProductId  uint `gorm:"not null"`
	OrderId	uint `gorm:"not null"`
}
