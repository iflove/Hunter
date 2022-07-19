.class public Lcom/alipay/mobile/antui/utils/EmojiUtil;
.super Ljava/lang/Object;
.source "EmojiUtil.java"


# static fields
.field private static emojiRegular:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, "\\[emoji\\]([\\s\\S]*?)\\[/emoji\\]"

    sput-object v0, Lcom/alipay/mobile/antui/utils/EmojiUtil;->emojiRegular:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "dataStr"    # Ljava/lang/String;

    const-string v0, "\\u"

    .line 58
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    return-object p0

    .line 61
    :cond_0
    const/4 v1, 0x0

    .local v1, "start":I
    const/4 v2, 0x0

    .line 63
    .local v2, "end":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .local v3, "buffer":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 64
    :goto_0
    if-ltz v1, :cond_2

    .line 65
    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 67
    .local v4, "charStr":Ljava/lang/String;
    move v2, v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 68
    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 70
    :cond_1
    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 72
    :goto_1
    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    .line 73
    .local v5, "letter":C
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 74
    move v1, v2

    .line 75
    .end local v4    # "charStr":Ljava/lang/String;
    .end local v5    # "letter":C
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 77
    .end local v1    # "start":I
    .end local v2    # "end":I
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 79
    const-string v0, ""

    return-object v0
.end method

.method public static emojiCut(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "sourceString"    # Ljava/lang/String;
    .param p1, "length"    # I

    .line 242
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    return-object p0

    .line 245
    :cond_0
    move v0, p1

    .line 246
    .local v0, "realLength":I
    add-int/lit8 v1, p1, -0x4

    .local v1, "target":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 247
    if-ltz v1, :cond_1

    .line 250
    add-int/lit8 v4, p1, -0x4

    invoke-static {p0, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 251
    .local v3, "unicode":I
    move v3, v4

    invoke-static {v4}, Lcom/alipay/mobile/antui/utils/EmojiMap;->getUnicode1Pos(I)I

    move-result v4

    .line 252
    if-lez v4, :cond_1

    .line 253
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    .line 254
    .local v4, "skip":I
    add-int v0, v1, v4

    .line 255
    goto :goto_1

    .line 246
    .end local v3    # "unicode":I
    .end local v4    # "skip":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    .end local v1    # "target":I
    :cond_2
    :goto_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static encodeUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "dataStr"    # Ljava/lang/String;

    .line 83
    const-string v0, ""

    .line 84
    .local v0, "returnStr":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 85
    return-object v0

    .line 87
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 88
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 89
    .local v2, "charValue":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\\u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .end local v2    # "charValue":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getEmojiLength(Landroid/content/Context;Ljava/lang/String;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 187
    return v1

    .line 189
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 191
    .local v0, "textLength":I
    const/4 v2, 0x0

    .line 192
    .local v2, "count":I
    const/4 v3, 0x0

    move v5, v2

    move v6, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .end local v2    # "count":I
    .local v5, "count":I
    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_4

    .line 193
    const/4 v7, 0x0

    .line 194
    .local v7, "pos":I
    const/4 v8, 0x0

    .line 195
    .local v8, "skip":I
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 196
    .local v1, "ch":C
    move v1, v9

    invoke-static {v9}, Lcom/alipay/mobile/antui/utils/EmojiUtil;->isSoftBankEmoji(C)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 197
    invoke-static {v1}, Lcom/alipay/mobile/antui/utils/EmojiMap;->getsbcodePos(I)I

    move-result v9

    .line 198
    move v7, v9

    if-lez v9, :cond_1

    .line 199
    const/4 v8, 0x1

    goto :goto_1

    .line 201
    :cond_1
    const/4 v8, 0x0

    .line 204
    :cond_2
    :goto_1
    if-nez v7, :cond_3

    .line 205
    invoke-static {p1, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v9

    .line 206
    .local v2, "unicode":I
    move v2, v9

    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    .line 207
    invoke-static {v2}, Lcom/alipay/mobile/antui/utils/EmojiMap;->getUnicode1Pos(I)I

    move-result v9

    .line 209
    if-lez v9, :cond_3

    .line 210
    invoke-static {v2}, Lcom/alipay/mobile/antui/utils/EmojiMap;->getFollowUnicode(I)I

    move-result v9

    .line 212
    .local v3, "needFollowUnicode":I
    move v3, v9

    if-lez v9, :cond_3

    .line 213
    add-int v9, v6, v8

    if-ge v9, v0, :cond_3

    .line 216
    add-int v9, v6, v8

    invoke-static {p1, v9}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v9

    .line 218
    .local v4, "followUnicode":I
    move v4, v9

    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    .line 219
    .local v9, "followSkip":I
    if-ne v4, v3, :cond_3

    .line 220
    add-int/2addr v8, v9

    .line 228
    .end local v2    # "unicode":I
    .end local v3    # "needFollowUnicode":I
    .end local v4    # "followUnicode":I
    .end local v9    # "followSkip":I
    :cond_3
    nop

    .end local v1    # "ch":C
    add-int/lit8 v5, v5, 0x1

    .line 192
    add-int/2addr v6, v8

    goto :goto_0

    .line 230
    .end local v6    # "i":I
    .end local v7    # "pos":I
    .end local v8    # "skip":I
    :cond_4
    return v5
.end method

.method public static isSoftBankEmoji(C)Z
    .locals 2
    .param p0, "c"    # C

    .line 176
    shr-int/lit8 v0, p0, 0xc

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static skipUnKnowEmoji(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 0
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    return-object p0
.end method

.method public static ubb2utf(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    return-object p0

    .line 29
    :cond_0
    move-object v0, p0

    .line 30
    .local v0, "source":Ljava/lang/String;
    sget-object v1, Lcom/alipay/mobile/antui/utils/EmojiUtil;->emojiRegular:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 32
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "ustr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/alipay/mobile/antui/utils/EmojiUtil;->decodeUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .end local v2    # "ustr":Ljava/lang/String;
    goto :goto_0

    .line 36
    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/utils/EmojiUtil;->utfScan(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static utf2ubb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .line 102
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/alipay/mobile/antui/utils/EmojiUtil;->utfScan(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static utfScan(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "toUbb"    # Z

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
    .local v0, "textLength":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v2, v0, :cond_a

    .line 121
    const/4 v8, 0x0

    .line 122
    .local v8, "pos":I
    const/4 v9, 0x0

    .line 123
    .local v9, "skip":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 124
    .local v3, "ch":C
    move v3, v10

    invoke-static {v10}, Lcom/alipay/mobile/antui/utils/EmojiUtil;->isSoftBankEmoji(C)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 125
    invoke-static {v3}, Lcom/alipay/mobile/antui/utils/EmojiMap;->getsbcodePos(I)I

    move-result v10

    .line 126
    move v8, v10

    if-lez v10, :cond_1

    .line 127
    const/4 v9, 0x1

    goto :goto_1

    .line 129
    :cond_1
    const/4 v9, 0x0

    .line 132
    :cond_2
    :goto_1
    if-nez v8, :cond_4

    .line 133
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v10

    .line 134
    .local v4, "unicode":I
    move v4, v10

    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    .line 135
    invoke-static {v4}, Lcom/alipay/mobile/antui/utils/EmojiMap;->getUnicode1Pos(I)I

    move-result v10

    .line 137
    move v8, v10

    if-lez v10, :cond_4

    .line 138
    invoke-static {v4}, Lcom/alipay/mobile/antui/utils/EmojiMap;->getFollowUnicode(I)I

    move-result v10

    .line 140
    .local v5, "needFollowUnicode":I
    move v5, v10

    if-lez v10, :cond_4

    .line 141
    add-int v10, v2, v9

    if-ge v10, v0, :cond_3

    .line 144
    add-int v6, v2, v9

    invoke-static {p0, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 146
    .local v7, "followUnicode":I
    move v7, v6

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    .line 147
    .local v6, "followSkip":I
    if-ne v7, v5, :cond_3

    .line 148
    add-int/2addr v9, v6

    goto :goto_2

    .line 150
    :cond_3
    const/4 v8, 0x0

    .line 158
    .end local v4    # "unicode":I
    .end local v5    # "needFollowUnicode":I
    .end local v6    # "followSkip":I
    .end local v7    # "followUnicode":I
    :cond_4
    :goto_2
    if-lez v8, :cond_8

    .line 159
    if-eqz p1, :cond_6

    .line 160
    const-string v10, "[emoji]"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v10, v2, v9

    if-ge v10, v0, :cond_5

    add-int v10, v2, v9

    goto :goto_3

    :cond_5
    move v10, v0

    :goto_3
    invoke-virtual {p0, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/mobile/antui/utils/EmojiUtil;->encodeUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "[/emoji]"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 162
    :cond_6
    add-int v10, v2, v9

    if-ge v10, v0, :cond_7

    add-int v10, v2, v9

    goto :goto_4

    :cond_7
    move v10, v0

    :goto_4
    invoke-virtual {p0, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 166
    :cond_8
    add-int v10, v2, v9

    if-ge v10, v0, :cond_9

    add-int v10, v2, v9

    goto :goto_5

    :cond_9
    move v10, v0

    :goto_5
    invoke-virtual {p0, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .end local v3    # "ch":C
    :goto_6
    add-int/2addr v2, v9

    goto/16 :goto_0

    .line 172
    .end local v2    # "i":I
    .end local v8    # "pos":I
    .end local v9    # "skip":I
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
