class article {
  
  String ? auther;
  String ? title;
  String ? description;
  String ? url;
  String ? urlToImage;
  String ? publishedAt;
  String ? content;
  Source? source;
 article(this.auther,this.title,this.description,this.url,this.content,this.publishedAt,this.urlToImage,this.source);

  article.fromMap(Map <String, dynamic> map){
   
   auther=map['auther'];
   title= map['title'];

   description=map['description'];
   url= map['url'];
   urlToImage=map['urlToImage'];
   publishedAt= map['publishedAt'];
   content=map['content'];
   source= Source.fromMap(map['source']);
   
   
 }
}
class Source{

  String ? id;
  String ? name;
  Source(this.name,this.id);
  Source.fromMap(Map <String, dynamic> map){
   id=map['id'] ;
   name=map['name'];
    
  }

}