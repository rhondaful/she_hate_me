#1 Create a file in your ruby_challenges folder and title it blog.rb
#2 Create a blog post object
#3 Make sure to modify the initialize method so that a user can do important things like add a title and some content to their blog post
#4 Make sure to save the time you created your blog post as an instance variable for each blog post instance.
#5 Collect all those blog posts in a hash, HINT: you will want to learn about the store method.
#6 Then organize your blog posts by when you created them. Can you do it in ASC and DESC order?
#7 Create a publish method that puts all your blog posts. Would that be a class or instance method?
#8 Maybe your blog posts should have authors?
#9 Hmm, shouldn’t you be practicing inheritance? Let’s add a page object to this blog. How is it different than a blog post? How is it similar?
//
class Blog
  attr_accessor :title, :all_blog_posts, :total_blog_posts

  def initialize
        @created_at = Time.now
        puts "Name Your Blog:"
        @title = gets.chomp
        @all_blog_posts = []
        @total_blog_posts = 0
      end
  
  def create_blogpost
        new_blog_post = Blog_Post.new
        puts "here is my new blog post"
        @all_blog_posts << new_blog_post
        @total_blog_posts +=1
      end
  
  def collect_blog_posts
        return @all_blog_posts
      end

  def publish(all_blog_posts)
        all_blog_posts.each do |blog_post|
              puts blog_post.title
              puts blog_post.created_at
              puts blog_post.content
            end
      end
end


class Blog_Post
      attr_accessor :title, :created_at, :content
      
      def initialize
            @created_at = Time.now
            puts "Name your blog post:"
            @title = gets.chomp
            
            puts "Your blog post content:"
            @content = gets.chomp
          end
      
      def edit_blog_content
            puts "New blog title:"
            @title = gets.chomp
        
            puts "New blog text:"
            @content = gets.chomp
          end
      
end

my_blog = Blog.new
first_blog_post = my_blog.create_blogpost
all_blog_posts = my_blog.collect_blog_posts
puts my_blog.inspect
my_blog.publish(all_blog_posts)