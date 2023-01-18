package main

import (
	"database/sql"
	"fmt"

	_ "github.com/go-sql-driver/mysql"
)

// Album type contains album details.
type Album struct {
	ID     int
	Title  string
	Artist string
	Year   int
}

func main() {
	db, err := sql.Open("mysql", "root:@tcp(localhost:3306)/go-api")
	if err != nil {
		panic(err.Error())
	}
	defer db.Close()

	results, err := db.Query("select * from albums")
	if err != nil {
		panic(err.Error())
	}
	for results.Next() {
		var album Album
		err = results.Scan(&album.ID, &album.Title, &album.Artist, &album.Year)
		if err != nil {
			panic(err.Error())
		}
		fmt.Println(album)
	}

}
