package com.yidumen.web.entity;


import com.yidumen.web.constant.TagType;

import java.io.Serializable;
import java.util.Set;

/**
 *
 * @author 蔡迪旻 <yidumen.com>
 */
public class Tag implements Serializable {

    private Long id;

    private String tagname;
    
    private int hits;

    private Set<Video> videos;

    private Set<Sutra> sutras;
    
    private TagType type;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTagname() {
        return tagname;
    }

    public void setTagname(String tagname) {
        this.tagname = tagname;
    }

    public int getHits() {
        return hits;
    }

    public void setHits(int hits) {
        this.hits = hits;
    }

    public Set<Video> getVideos() {
        return videos;
    }

    public void setVideos(Set<Video> videos) {
        this.videos = videos;
    }

    public Set<Sutra> getSutras() {
        return sutras;
    }

    public void setSutras(Set<Sutra> sutras) {
        this.sutras = sutras;
    }


    public TagType getType() {
        return type;
    }

    public void setType(TagType type) {
        this.type = type;
    }

}
