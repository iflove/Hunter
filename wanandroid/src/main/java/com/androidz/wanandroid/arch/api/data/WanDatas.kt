package com.androidz.wanandroid.arch.api.data

import java.io.Serializable

/**
 *
 * Created by rentianlong on 2020/6/29
 */

data class Article(
    val id: Int, val originId: Int, val title: String, val chapterId: Int, val chapterName: String,
    val envelopePic: String, val link: String, val author: String, val publishTime: Long,
    val zan: Int, val desc: String, val visible: Int, val niceDate: String,
    val niceShareDate: String, val courseId: Int, var collect: Boolean, val apkLink: String,
    val projectLink: String, val superChapterId: Int, val superChapterName: String?, val type: Int,
    val fresh: Boolean, val audit: Int, val prefix: String, val selfVisible: Int,
    val shareDate: Long, val shareUser: String, val tags: Any, // Not sure
    val userId: Int
) : Serializable

data class ArticleList(
    val offset: Int, val size: Int, val total: Int, val pageCount: Int, val curPage: Int,
    val over: Boolean, val datas: MutableList<Article>
) : Serializable

data class Banner(val desc: String, val id: Int, val imagePath: String, val isVisible: Int,
                  val order: Int, val title: String, val type: Int, val url: String
)

data class Hot(val id: Int, val link: String, val name: String, val order: Int, val visible: Int,
               val icon: String
)

data class Navigation(val articles: List<Article>, val cid: Int, val name: String)

data class SystemChild(val child: List<SystemChild>,
                       val courseId: Int,
                       val id: Int,
                       val name: String,
                       val order: Int,
                       val parentChapterId: Int,
                       val visible: Int
) : Serializable

data class SystemParent(val children: List<SystemChild>,
                        val courseId: Int,
                        val id: Int,
                        val name: String,
                        val order: Int,
                        val parentChapterId: Int,
                        val visible: Int,
                        val userControlSetTop: Boolean
) : Serializable

data class User(val admin: Boolean,
                val chapterTops: List<String>,
                val collectIds: List<Int>,
                val email: String,
                val icon: String,
                val id: Int,
                val nickname: String,
                val password: String,
                val publicName: String,
                val token: String,
                val type: Int,
                val username: String
) : Serializable {

    override fun equals(other: Any?): Boolean {
        return if (other is User) {
            this.id == other.id
        } else false
    }

    override fun hashCode(): Int {
        var result = admin.hashCode()
        result = 31 * result + chapterTops.hashCode()
        result = 31 * result + collectIds.hashCode()
        result = 31 * result + email.hashCode()
        result = 31 * result + icon.hashCode()
        result = 31 * result + id
        result = 31 * result + nickname.hashCode()
        result = 31 * result + password.hashCode()
        result = 31 * result + publicName.hashCode()
        result = 31 * result + token.hashCode()
        result = 31 * result + type
        result = 31 * result + username.hashCode()
        return result
    }
}