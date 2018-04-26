package com.hc.web.po;

public class ComDynamic {
    private Integer id;
    private String title;
    private String author;
    private String postTime;
    private Integer views;
    private Integer comments;
    private Integer thumbups;
	private String editor;
	private String edit_time;
	private String content;
	private String type;
	private String cover;
	private Integer top;
	private Integer original;
	private String thumbuper;
	
	

    public String getThumbuper() {
		return thumbuper;
	}

	public void setThumbuper(String thumbuper) {
		this.thumbuper = thumbuper;
	}

	public String getEditor() {
		return editor;
	}

	public void setEditor(String editor) {
		this.editor = editor;
	}

	public String getEdit_time() {
		return edit_time;
	}

	public void setEdit_time(String edit_time) {
		this.edit_time = edit_time;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCover() {
		return cover;
	}

	public void setCover(String cover) {
		this.cover = cover;
	}

	

	public Integer getTop() {
		return top;
	}

	public void setTop(Integer top) {
		this.top = top;
	}

	public Integer getOriginal() {
		return original;
	}

	public void setOriginal(Integer original) {
		this.original = original;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author == null ? null : author.trim();
    }

    public String getPostTime() {
        return postTime;
    }

    public void setPostTime(String postTime) {
        this.postTime = postTime == null ? null : postTime.trim();
    }

    public Integer getViews() {
        return views;
    }

    public void setViews(Integer views) {
        this.views = views;
    }

    public Integer getComments() {
        return comments;
    }

    public void setComments(Integer comments) {
        this.comments = comments;
    }

    public Integer getThumbups() {
        return thumbups;
    }

    public void setThumbups(Integer thumbups) {
        this.thumbups = thumbups;
    }
}