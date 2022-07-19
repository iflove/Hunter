.class public Lcom/alipay/mobile/upgrade/widget/emoji/EmojiUtil;
.super Ljava/lang/Object;
.source "EmojiUtil.java"


# static fields
.field private static emojiRegular:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, "\\[emoji\\]([\\s\\S]*?)\\[/emoji\\]"

    sput-object v0, Lcom/alipay/mobile/upgrade/widget/emoji/EmojiUtil;->emojiRegular:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 58
    const-string v0, "\\u"

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    return-object p0

    .line 61
    :cond_0
    const/4 v1, 0x0

    .line 62
    nop

    .line 63
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_2

    .line 65
    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 66
    nop

    .line 67
    if-ne v4, v3, :cond_1

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 72
    :goto_1
    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    .line 73
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 74
    nop

    .line 75
    move v1, v4

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 77
    :catch_0
    move-exception p0

    .line 79
    const-string p0, ""

    return-object p0
.end method

.method public static emojiCut(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 242
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    return-object p0

    .line 245
    :cond_0
    nop

    .line 246
    add-int/lit8 v0, p1, -0x4

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_3

    .line 247
    if-gez v1, :cond_1

    .line 248
    goto :goto_1

    .line 250
    :cond_1
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 251
    invoke-static {v2}, Lcom/alipay/mobile/upgrade/widget/emoji/EmojiMap;->getUnicode1Pos(I)I

    move-result v3

    .line 252
    if-lez v3, :cond_2

    .line 253
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    .line 254
    add-int/2addr p1, v1

    .line 255
    goto :goto_2

    .line 246
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :cond_3
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encodeUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 83
    nop

    .line 84
    const-string v0, ""

    if-nez p0, :cond_0

    .line 85
    return-object v0

    .line 87
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 88
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\\u"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_1
    return-object v0
.end method

.method public static getEmojiLength(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 187
    return v0

    .line 189
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    .line 191
    nop

    .line 192
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p0, :cond_5

    .line 193
    nop

    .line 194
    nop

    .line 195
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 196
    invoke-static {v3}, Lcom/alipay/mobile/upgrade/widget/emoji/EmojiUtil;->isSoftBankEmoji(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 197
    invoke-static {v3}, Lcom/alipay/mobile/upgrade/widget/emoji/EmojiMap;->getsbcodePos(I)I

    move-result v3

    .line 198
    if-lez v3, :cond_1

    .line 199
    const/4 v4, 0x1

    goto :goto_1

    .line 201
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 196
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 204
    :goto_1
    if-nez v3, :cond_4

    .line 205
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 206
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    .line 207
    invoke-static {v3}, Lcom/alipay/mobile/upgrade/widget/emoji/EmojiMap;->getUnicode1Pos(I)I

    move-result v5

    .line 209
    if-lez v5, :cond_4

    .line 210
    invoke-static {v3}, Lcom/alipay/mobile/upgrade/widget/emoji/EmojiMap;->getFollowUnicode(I)I

    move-result v3

    .line 212
    if-lez v3, :cond_4

    .line 213
    add-int v5, v1, v4

    if-lt v5, p0, :cond_3

    .line 214
    goto :goto_2

    .line 216
    :cond_3
    invoke-static {p1, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 218
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    .line 219
    if-ne v5, v3, :cond_4

    .line 220
    add-int/2addr v4, v6

    nop

    .line 228
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 192
    add-int/2addr v1, v4

    goto :goto_0

    .line 230
    :cond_5
    return v2
.end method

.method public static isSoftBankEmoji(C)Z
    .locals 1

    .line 176
    shr-int/lit8 p0, p0, 0xc

    const/16 v0, 0xe

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static skipUnKnowEmoji(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    return-object p0
.end method

.method public static ubb2utf(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    return-object p0

    .line 29
    :cond_0
    nop

    .line 30
    sget-object v0, Lcom/alipay/mobile/upgrade/widget/emoji/EmojiUtil;->emojiRegular:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 32
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/alipay/mobile/upgrade/widget/emoji/EmojiUtil;->decodeUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/upgrade/widget/emoji/EmojiUtil;->utfScan(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static utf2ubb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 102
    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/alipay/mobile/upgrade/widget/emoji/EmojiUtil;->utfScan(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static utfScan(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    .line 113
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    return-object p0

    .line 117
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_c

    .line 121
    nop

    .line 122
    nop

    .line 123
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 124
    invoke-static {v4}, Lcom/alipay/mobile/upgrade/widget/emoji/EmojiUtil;->isSoftBankEmoji(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    invoke-static {v4}, Lcom/alipay/mobile/upgrade/widget/emoji/EmojiMap;->getsbcodePos(I)I

    move-result v4

    .line 126
    if-lez v4, :cond_1

    .line 127
    const/4 v5, 0x1

    goto :goto_1

    .line 129
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 124
    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 132
    :goto_1
    if-nez v4, :cond_6

    .line 133
    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 134
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .line 135
    invoke-static {v4}, Lcom/alipay/mobile/upgrade/widget/emoji/EmojiMap;->getUnicode1Pos(I)I

    move-result v6

    .line 137
    if-lez v6, :cond_5

    .line 138
    invoke-static {v4}, Lcom/alipay/mobile/upgrade/widget/emoji/EmojiMap;->getFollowUnicode(I)I

    move-result v4

    .line 140
    if-lez v4, :cond_5

    .line 141
    add-int v7, v3, v5

    if-lt v7, v0, :cond_3

    .line 142
    const/4 v4, 0x0

    goto :goto_2

    .line 144
    :cond_3
    invoke-static {p0, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v7

    .line 146
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    .line 147
    if-ne v7, v4, :cond_4

    .line 148
    add-int/2addr v5, v8

    move v4, v6

    goto :goto_2

    .line 150
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 158
    :cond_5
    move v4, v6

    :cond_6
    :goto_2
    if-lez v4, :cond_a

    .line 159
    if-eqz p1, :cond_8

    .line 160
    const-string v4, "[emoji]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v4, v3, v5

    if-ge v4, v0, :cond_7

    goto :goto_3

    :cond_7
    move v4, v0

    :goto_3
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/upgrade/widget/emoji/EmojiUtil;->encodeUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "[/emoji]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 162
    :cond_8
    add-int v4, v3, v5

    if-ge v4, v0, :cond_9

    goto :goto_4

    :cond_9
    move v4, v0

    :goto_4
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 166
    :cond_a
    add-int v4, v3, v5

    if-ge v4, v0, :cond_b

    goto :goto_5

    :cond_b
    move v4, v0

    :goto_5
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :goto_6
    add-int/2addr v3, v5

    goto/16 :goto_0

    .line 172
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
