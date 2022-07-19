.class public Lcom/alipay/mobile/upgrade/widget/emoji/APEmojiRender;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/upgrade/widget/emoji/APEmojiRender;->resourceCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static renderEmoji(Landroid/content/Context;Landroid/text/Spannable;I)V
    .locals 6

    .line 36
    if-nez p1, :cond_0

    .line 37
    return-void

    .line 40
    :cond_0
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v4

    .line 41
    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/upgrade/widget/emoji/APEmojiRender;->renderEmoji(Landroid/content/Context;Landroid/text/Spannable;IIII)V

    .line 42
    return-void
.end method

.method public static renderEmoji(Landroid/content/Context;Landroid/text/Spannable;IIII)V
    .locals 0

    .line 55
    invoke-static/range {p0 .. p5}, Lcom/alipay/mobile/upgrade/widget/emoji/APEmojiRender;->renderEmojiReturncount(Landroid/content/Context;Landroid/text/Spannable;IIII)I

    .line 56
    return-void
.end method

.method public static renderEmojiReturncount(Landroid/content/Context;Landroid/text/Spannable;I)I
    .locals 6

    .line 68
    if-nez p1, :cond_0

    .line 69
    const/4 p0, 0x0

    return p0

    .line 72
    :cond_0
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v4

    .line 73
    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/upgrade/widget/emoji/APEmojiRender;->renderEmojiReturncount(Landroid/content/Context;Landroid/text/Spannable;IIII)I

    move-result p0

    return p0
.end method

.method public static renderEmojiReturncount(Landroid/content/Context;Landroid/text/Spannable;IIII)I
    .locals 10

    .line 89
    const-string v0, "close io"

    const-string v1, "APEmojiRender"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 90
    return v2

    .line 93
    :cond_0
    nop

    .line 94
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v3

    .line 95
    sub-int v4, v3, p3

    .line 96
    if-ltz p4, :cond_2

    if-lt p4, v4, :cond_1

    goto :goto_0

    :cond_1
    add-int v3, p3, p4

    .line 99
    :cond_2
    :goto_0
    if-lez p5, :cond_4

    .line 100
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result p4

    const-class v4, Lcom/alipay/mobile/upgrade/widget/emoji/EmojiImageSpan;

    invoke-interface {p1, v2, p4, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lcom/alipay/mobile/upgrade/widget/emoji/EmojiImageSpan;

    .line 101
    if-eqz p4, :cond_4

    .line 102
    array-length v4, p4

    if-lt v4, p5, :cond_3

    .line 103
    array-length p0, p4

    return p0

    .line 105
    :cond_3
    array-length p4, p4

    goto :goto_1

    .line 111
    :cond_4
    const/4 p4, 0x0

    :goto_1
    nop

    :goto_2
    if-ge p3, v3, :cond_10

    .line 112
    nop

    .line 113
    nop

    .line 114
    invoke-interface {p1, p3}, Landroid/text/Spannable;->charAt(I)C

    move-result v4

    .line 115
    invoke-static {v4}, Lcom/alipay/mobile/upgrade/widget/emoji/EmojiUtil;->isSoftBankEmoji(C)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    .line 116
    invoke-static {v4}, Lcom/alipay/mobile/upgrade/widget/emoji/EmojiMap;->getsbcodePos(I)I

    move-result v4

    .line 117
    if-lez v4, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 115
    :cond_6
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 119
    :goto_3
    if-nez v4, :cond_a

    .line 120
    invoke-static {p1, p3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 121
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .line 122
    invoke-static {v4}, Lcom/alipay/mobile/upgrade/widget/emoji/EmojiMap;->getUnicode1Pos(I)I

    move-result v7

    .line 124
    if-lez v7, :cond_9

    .line 125
    invoke-static {v4}, Lcom/alipay/mobile/upgrade/widget/emoji/EmojiMap;->getFollowUnicode(I)I

    move-result v4

    .line 127
    if-lez v4, :cond_9

    .line 128
    add-int v8, p3, v5

    if-lt v8, v3, :cond_7

    .line 129
    const/4 v4, 0x0

    goto :goto_4

    .line 131
    :cond_7
    invoke-static {p1, v8}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 133
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    .line 134
    if-ne v8, v4, :cond_8

    .line 135
    add-int/2addr v5, v9

    move v4, v7

    goto :goto_4

    .line 137
    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    .line 143
    :cond_9
    move v4, v7

    :cond_a
    :goto_4
    if-lez v4, :cond_f

    .line 144
    const/4 v7, 0x0

    .line 146
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "emoji/emoji_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 148
    sget-object v8, Lcom/alipay/mobile/upgrade/widget/emoji/APEmojiRender;->resourceCache:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 149
    if-nez v9, :cond_b

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9, v4, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v7

    .line 151
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 152
    invoke-interface {v8, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_b
    if-eqz v9, :cond_d

    .line 155
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 156
    invoke-virtual {v4, v2, v2, p2, p2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 157
    new-instance v6, Lcom/alipay/mobile/upgrade/widget/emoji/EmojiImageSpan;

    invoke-direct {v6, v4}, Lcom/alipay/mobile/upgrade/widget/emoji/EmojiImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 158
    add-int v4, p3, v5

    const/16 v8, 0x21

    invoke-interface {p1, v6, p3, v4, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    add-int/lit8 p4, p4, 0x1

    .line 161
    if-lez p5, :cond_d

    if-lt p4, p5, :cond_d

    .line 162
    nop

    .line 169
    if-eqz v7, :cond_c

    .line 171
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    goto :goto_5

    .line 172
    :catch_0
    move-exception p0

    .line 173
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    :cond_c
    :goto_5
    return p4

    .line 169
    :cond_d
    if-eqz v7, :cond_f

    .line 171
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 174
    :goto_6
    goto :goto_9

    .line 172
    :catch_1
    move-exception v4

    .line 173
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 169
    :catchall_0
    move-exception p0

    goto :goto_7

    .line 165
    :catch_2
    move-exception v4

    .line 167
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "renderEmojiReturncount Exception = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    if-eqz v7, :cond_f

    .line 171
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    .line 169
    :goto_7
    if-eqz v7, :cond_e

    .line 171
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 174
    goto :goto_8

    .line 172
    :catch_3
    move-exception p1

    .line 173
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    :cond_e
    :goto_8
    throw p0

    .line 111
    :cond_f
    :goto_9
    add-int/2addr p3, v5

    goto/16 :goto_2

    .line 179
    :cond_10
    return p4
.end method
