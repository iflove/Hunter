.class public Lcom/alipay/mobile/antui/utils/HtmlParser;
.super Ljava/lang/Object;
.source "HtmlParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseALabel(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 12
    .param p0, "html"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 26
    .local v0, "map":Ljava/util/LinkedHashMap;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    return-object v0

    .line 30
    :cond_0
    const-string v1, "[\\>].*[\\<]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 31
    .local v1, "textPattern":Ljava/util/regex/Pattern;
    const-string v2, "[\\\'|\\\"].*[\\\'|\\\"]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 33
    .local v2, "urlPattern":Ljava/util/regex/Pattern;
    const-string v3, "<a"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "msgArr":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v5, 0x0

    move-object v6, v5

    :goto_0
    array-length v7, v3

    if-ge v4, v7, :cond_3

    .line 37
    aget-object v7, v3, v4

    invoke-virtual {v1, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 38
    .local v5, "textMatcher":Ljava/util/regex/Matcher;
    move-object v5, v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 39
    aget-object v7, v3, v4

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .local v7, "text":Ljava/lang/String;
    goto :goto_1

    .line 41
    .end local v7    # "text":Ljava/lang/String;
    :cond_1
    aget-object v7, v3, v4

    .line 44
    .restart local v7    # "text":Ljava/lang/String;
    :goto_1
    const/4 v8, 0x0

    .line 45
    .local v8, "url":Ljava/lang/String;
    aget-object v9, v3, v4

    invoke-virtual {v2, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 46
    .local v6, "urlMatcher":Ljava/util/regex/Matcher;
    move-object v6, v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 47
    aget-object v9, v3, v4

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 50
    :cond_2
    invoke-virtual {v0, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .end local v5    # "textMatcher":Ljava/util/regex/Matcher;
    .end local v6    # "urlMatcher":Ljava/util/regex/Matcher;
    .end local v7    # "text":Ljava/lang/String;
    .end local v8    # "url":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 53
    .end local v4    # "i":I
    :cond_3
    return-object v0
.end method
