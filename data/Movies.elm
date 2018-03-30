module Movies exposing (..)
import Image exposing (Image)

type alias Movie = {
  id: Int,
  poster : Image,
  title: String,
  rating: Float,
  genre: List String,
  link: String
}

type alias Image = {
  url : String,
  width : Int,
  height : Int
}

--MOVIES
moviesCollection : List Movie
moviesCollection = [avengers2, toyStory3, lionKing, it]

avengers2 : Movie
avengers2 = {id= 1, poster= createPoster "../assets/Avengers_Age_Of_Ultron.png", title= "Avengers: Age of Ultron", rating= 8.3, genre= ["Action", "Adventure", "Superhero"], link= "https://www.youtube.com/watch?v=rD8lWtcgeyg"}

toyStory3 : Movie
toyStory3 = {id= 2, poster= createPoster "../assets/Toy_Story_3_poster.png", title= "Toy Story 3", rating= 9.0, genre= ["Family", "Animated"], link= "https://www.youtube.com/watch?v=JcpWXaA2qeg"}

lionKing : Movie
lionKing = {id= 3, poster= createPoster "../assets/The_Lion_king.png", title= "Lion King", rating= 9.5, genre= ["Family", "Animated"], link= "https://www.youtube.com/watch?v=_ujGv5dhGfk"}

it : Movie
it = {id= 4, poster= createPoster "../assets/it_poster.png", title= "IT", rating= 8.0, genre= ["Horror"], link= "https://www.youtube.com/watch?v=hAUTdjf9rko"}

--POSTERS
createPoster : String -> Image
createPoster imageUrl = { url= imageUrl, width= 400, height= 400 }
