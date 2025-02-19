
class Author
    attr_accessor :name

    def initialize(name)
        @name = name
        @posts = []
    end

    def posts
        Post.all.each{|post| @posts << post if post.author == self}
        @posts
    end

    def add_post(post)
        post.author = self 
    end

    def add_post_by_title(title)
        post = Post.new(title)
        self.add_post(post)
    end

    def self.post_count
        Post.all.count
    end

end