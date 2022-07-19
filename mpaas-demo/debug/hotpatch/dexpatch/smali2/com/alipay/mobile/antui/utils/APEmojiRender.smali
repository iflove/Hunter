.class public Lcom/alipay/mobile/antui/utils/APEmojiRender;
.super Ljava/lang/Object;
.source "APEmojiRender.java"


# static fields
.field public static final resourceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sEmoiRootCachePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/antui/utils/APEmojiRender;->resourceCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    const/4 v0, 0x0

    .line 189
    .local v0, "cacheDir":Ljava/io/File;
    invoke-static {}, Lcom/alipay/mobile/antui/utils/APEmojiRender;->isCanUseSDCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/alipay/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/emojiFiles/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 197
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 200
    :cond_1
    return-object v0
.end method

.method public static final getEmoiCacheFullPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 174
    sget-object v0, Lcom/alipay/mobile/antui/utils/APEmojiRender;->sEmoiRootCachePath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 175
    invoke-static {p0}, Lcom/alipay/mobile/antui/utils/APEmojiRender;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 176
    .local v1, "file":Ljava/io/File;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 177
    sget-object v0, Lcom/alipay/mobile/antui/utils/APEmojiRender;->sEmoiRootCachePath:Ljava/lang/String;

    return-object v0

    .line 179
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 180
    sput-object v0, Lcom/alipay/mobile/antui/utils/APEmojiRender;->sEmoiRootCachePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/alipay/mobile/antui/utils/APEmojiRender;->sEmoiRootCachePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/antui/utils/APEmojiRender;->sEmoiRootCachePath:Ljava/lang/String;

    .line 184
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    sget-object v0, Lcom/alipay/mobile/antui/utils/APEmojiRender;->sEmoiRootCachePath:Ljava/lang/String;

    return-object v0
.end method

.method public static isCanUseSDCard()Z
    .locals 2

    .line 204
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static renderEmoji(Landroid/content/Context;Landroid/text/Spannable;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "emojiSize"    # I

    .line 35
    if-nez p1, :cond_0

    .line 36
    return-void

    .line 39
    :cond_0
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v6

    .line 40
    .local v6, "textLength":I
    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v6

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/antui/utils/APEmojiRender;->renderEmoji(Landroid/content/Context;Landroid/text/Spannable;IIII)V

    .line 41
    return-void
.end method

.method public static renderEmoji(Landroid/content/Context;Landroid/text/Spannable;IIII)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "emojiSize"    # I
    .param p3, "index"    # I
    .param p4, "length"    # I
    .param p5, "maxCount"    # I

    .line 54
    invoke-static/range {p0 .. p5}, Lcom/alipay/mobile/antui/utils/APEmojiRender;->renderEmojiReturncount(Landroid/content/Context;Landroid/text/Spannable;IIII)I

    .line 55
    return-void
.end method

.method public static renderEmojiReturncount(Landroid/content/Context;Landroid/text/Spannable;I)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "emojiSize"    # I

    .line 67
    if-nez p1, :cond_0

    .line 68
    const/4 v0, 0x0

    return v0

    .line 71
    :cond_0
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 72
    .local v0, "textLength":I
    const/4 v4, 0x0

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, v0

    invoke-static/range {v1 .. v6}, Lcom/alipay/mobile/antui/utils/APEmojiRender;->renderEmojiReturncount(Landroid/content/Context;Landroid/text/Spannable;IIII)I

    move-result v1

    return v1
.end method

.method public static renderEmojiReturncount(Landroid/content/Context;Landroid/text/Spannable;IIII)I
    .locals 9

    .line 88
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 89
    return v0

    .line 92
    :cond_0
    nop

    .line 93
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    .line 94
    sub-int v2, v1, p3

    .line 95
    if-ltz p4, :cond_2

    if-lt p4, v2, :cond_1

    goto :goto_0

    :cond_1
    add-int v1, p3, p4

    .line 98
    :cond_2
    :goto_0
    if-lez p5, :cond_4

    .line 99
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result p4

    const-class v2, Lcom/alipay/mobile/antui/utils/EmojiImageSpan;

    invoke-interface {p1, v0, p4, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lcom/alipay/mobile/antui/utils/EmojiImageSpan;

    .line 100
    if-eqz p4, :cond_4

    .line 101
    array-length v2, p4

    if-lt v2, p5, :cond_3

    .line 102
    array-length p0, p4

    return p0

    .line 104
    :cond_3
    array-length p4, p4

    goto :goto_1

    .line 110
    :cond_4
    const/4 p4, 0x0

    :goto_1
    nop

    :goto_2
    if-ge p3, v1, :cond_d

    .line 111
    nop

    .line 112
    nop

    .line 113
    invoke-interface {p1, p3}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    .line 114
    invoke-static {v2}, Lcom/alipay/mobile/antui/utils/EmojiUtil;->isSoftBankEmoji(C)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 115
    invoke-static {v2}, Lcom/alipay/mobile/antui/utils/EmojiMap;->getsbcodePos(I)I

    move-result v2

    .line 116
    if-lez v2, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 114
    :cond_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 118
    :goto_3
    if-nez v2, :cond_9

    .line 119
    invoke-static {p1, p3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 120
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    .line 121
    invoke-static {v2}, Lcom/alipay/mobile/antui/utils/EmojiMap;->getUnicode1Pos(I)I

    move-result v4

    .line 123
    if-lez v4, :cond_8

    .line 124
    invoke-static {v2}, Lcom/alipay/mobile/antui/utils/EmojiMap;->getFollowUnicode(I)I

    move-result v2

    .line 126
    if-lez v2, :cond_8

    .line 127
    add-int v5, p3, v3

    if-ge v5, v1, :cond_7

    .line 130
    invoke-static {p1, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 132
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    .line 133
    if-ne v5, v2, :cond_7

    .line 134
    add-int/2addr v3, v6

    move v2, v4

    goto :goto_4

    .line 136
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 142
    :cond_8
    move v2, v4

    :cond_9
    :goto_4
    if-lez v2, :cond_c

    .line 144
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "emoji"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "emoji_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".alipaypng"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    sget-object v4, Lcom/alipay/mobile/antui/utils/APEmojiRender;->resourceCache:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 147
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/alipay/mobile/antui/utils/APEmojiRender;->getEmoiCacheFullPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    if-nez v5, :cond_a

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 149
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 151
    :cond_a
    if-eqz v5, :cond_b

    .line 152
    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 154
    invoke-virtual {v2, v0, v0, p2, p2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 155
    new-instance v4, Lcom/alipay/mobile/antui/utils/EmojiImageSpan;

    invoke-direct {v4, v2}, Lcom/alipay/mobile/antui/utils/EmojiImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 156
    add-int v2, p3, v3

    const/16 v5, 0x21

    invoke-interface {p1, v4, p3, v2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    add-int/lit8 p4, p4, 0x1

    .line 159
    if-lez p5, :cond_b

    if-lt p4, p5, :cond_b

    .line 160
    return p4

    .line 166
    :cond_b
    goto :goto_5

    .line 163
    :catch_0
    move-exception v2

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "renderEmojiReturncount Exception = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "APEmojiRender"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_c
    :goto_5
    add-int/2addr p3, v3

    goto/16 :goto_2

    .line 169
    :cond_d
    return p4
.end method
