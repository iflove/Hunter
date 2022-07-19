.class public Lcom/alipay/mobile/quinox/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final INDEX_NOT_FOUND:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static contains(Ljava/lang/String;C)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C

    .line 61
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 62
    return v1

    .line 64
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 69
    :cond_2
    :goto_0
    return v0
.end method

.method public static endsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/quinox/utils/StringUtils;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .line 97
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 101
    return v0

    .line 103
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 104
    .local v0, "strOffset":I
    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    move-object v2, p0

    move v3, p2

    move v4, v0

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    return v1

    .line 98
    .end local v0    # "strOffset":I
    :cond_2
    :goto_0
    if-nez p0, :cond_3

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 75
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchStr"    # Ljava/lang/String;

    .line 54
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 55
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 17
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static remove(Ljava/lang/String;C)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # C

    .line 201
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 204
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 205
    .local v0, "chars":[C
    const/4 v1, 0x0

    .line 206
    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 207
    aget-char v3, v0, v2

    if-eq v3, p1, :cond_1

    .line 208
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "pos":I
    .local v3, "pos":I
    aget-char v4, v0, v2

    aput-char v4, v0, v1

    move v1, v3

    .line 206
    .end local v3    # "pos":I
    .restart local v1    # "pos":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 202
    .end local v0    # "chars":[C
    .end local v1    # "pos":I
    :cond_3
    :goto_1
    return-object p0
.end method

.method public static remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 215
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    const/4 v0, -0x1

    const-string v1, ""

    invoke-static {p0, p1, v1, v0}, Lcom/alipay/mobile/quinox/utils/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 216
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .param p3, "max"    # I

    .line 222
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_0

    goto :goto_3

    .line 225
    :cond_0
    const/4 v0, 0x0

    .line 226
    .local v0, "start":I
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    move v3, v1

    .line 227
    .local v3, "end":I
    move v3, v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 228
    return-object p0

    .line 230
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 231
    .local v2, "replLength":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    move v6, v1

    .line 232
    .local v6, "increase":I
    move v6, v5

    if-gez v5, :cond_2

    goto :goto_0

    :cond_2
    move v1, v6

    .line 233
    :goto_0
    const/16 v5, 0x40

    if-gez p3, :cond_3

    const/16 v5, 0x10

    goto :goto_1

    :cond_3
    if-le p3, v5, :cond_4

    goto :goto_1

    :cond_4
    move v5, p3

    :goto_1
    mul-int v1, v1, v5

    .line 234
    .end local v6    # "increase":I
    .local v1, "increase":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 235
    .local v5, "buf":Ljava/lang/StringBuilder;
    :goto_2
    if-eq v3, v4, :cond_5

    .line 236
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    add-int v0, v3, v2

    .line 238
    add-int/lit8 p3, p3, -0x1

    if-eqz p3, :cond_5

    .line 241
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    goto :goto_2

    .line 243
    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 223
    .end local v0    # "start":I
    .end local v1    # "increase":I
    .end local v2    # "replLength":I
    .end local v3    # "end":I
    .end local v5    # "buf":Ljava/lang/StringBuilder;
    :cond_6
    :goto_3
    return-object p0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .line 108
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/alipay/mobile/quinox/utils/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I
    .param p3, "preserveAllTokens"    # Z

    .line 116
    if-nez p0, :cond_0

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 120
    .local v2, "len":I
    move v2, v0

    if-nez v0, :cond_1

    .line 121
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 123
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "list":Ljava/util/List;
    const/4 v3, 0x1

    .line 125
    .local v3, "sizePlus1":I
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v5, 0x0

    .line 126
    .local v5, "start":I
    const/4 v6, 0x0

    .line 127
    .local v6, "match":Z
    const/4 v7, 0x0

    .line 128
    .local v7, "lastMatch":Z
    const/4 v8, 0x1

    if-nez p1, :cond_6

    .line 130
    :goto_0
    if-ge v4, v2, :cond_11

    .line 131
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 132
    if-nez v6, :cond_2

    if-eqz p3, :cond_4

    .line 133
    :cond_2
    const/4 v1, 0x1

    .line 134
    .end local v7    # "lastMatch":Z
    .local v1, "lastMatch":Z
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "sizePlus1":I
    .local v7, "sizePlus1":I
    if-ne v3, p2, :cond_3

    .line 135
    move v3, v2

    .line 136
    .end local v4    # "i":I
    .local v3, "i":I
    const/4 v1, 0x0

    move v4, v3

    .line 138
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_3
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    const/4 v3, 0x0

    move v6, v3

    move v3, v7

    move v7, v1

    .line 141
    .end local v1    # "lastMatch":Z
    .local v3, "sizePlus1":I
    .local v7, "lastMatch":Z
    :cond_4
    add-int/2addr v4, v8

    move v5, v4

    .line 142
    goto :goto_0

    .line 144
    :cond_5
    const/4 v7, 0x0

    .line 145
    const/4 v6, 0x1

    .line 146
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 148
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v8, :cond_c

    .line 150
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 151
    .local v1, "sep":C
    :goto_1
    if-ge v4, v2, :cond_b

    .line 152
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v1, :cond_a

    .line 153
    if-nez v6, :cond_7

    if-eqz p3, :cond_9

    .line 154
    :cond_7
    const/4 v7, 0x1

    .line 155
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "sizePlus1":I
    .local v9, "sizePlus1":I
    if-ne v3, p2, :cond_8

    .line 156
    move v3, v2

    .line 157
    .end local v4    # "i":I
    .local v3, "i":I
    const/4 v7, 0x0

    move v4, v3

    .line 159
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_8
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    const/4 v3, 0x0

    move v6, v3

    move v3, v9

    .line 162
    .end local v9    # "sizePlus1":I
    .local v3, "sizePlus1":I
    :cond_9
    add-int/2addr v4, v8

    move v5, v4

    .line 163
    goto :goto_1

    .line 165
    :cond_a
    const/4 v7, 0x0

    .line 166
    const/4 v6, 0x1

    .line 167
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 169
    .end local v1    # "sep":C
    :cond_b
    goto :goto_3

    .line 171
    :cond_c
    :goto_2
    if-ge v4, v2, :cond_11

    .line 172
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_10

    .line 173
    if-nez v6, :cond_d

    if-eqz p3, :cond_f

    .line 174
    :cond_d
    const/4 v1, 0x1

    .line 175
    .end local v7    # "lastMatch":Z
    .local v1, "lastMatch":Z
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "sizePlus1":I
    .local v7, "sizePlus1":I
    if-ne v3, p2, :cond_e

    .line 176
    move v3, v2

    .line 177
    .end local v4    # "i":I
    .local v3, "i":I
    const/4 v1, 0x0

    move v4, v3

    .line 179
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_e
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    const/4 v3, 0x0

    move v6, v3

    move v3, v7

    move v7, v1

    .line 182
    .end local v1    # "lastMatch":Z
    .local v3, "sizePlus1":I
    .local v7, "lastMatch":Z
    :cond_f
    add-int/2addr v4, v8

    move v5, v4

    .line 183
    goto :goto_2

    .line 185
    :cond_10
    const/4 v7, 0x0

    .line 186
    const/4 v6, 0x1

    .line 187
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 190
    :cond_11
    :goto_3
    if-nez v6, :cond_12

    if-eqz p3, :cond_13

    if-eqz v7, :cond_13

    .line 191
    :cond_12
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static startsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/quinox/utils/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .line 83
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 87
    return v0

    .line 89
    :cond_1
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    move-object v3, p0

    move v4, p2

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0

    .line 84
    :cond_2
    :goto_0
    if-nez p0, :cond_3

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static substring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 21
    if-nez p0, :cond_0

    .line 22
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    if-gez p2, :cond_1

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    .line 29
    :cond_1
    if-gez p1, :cond_2

    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    .line 34
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_3

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    .line 39
    :cond_3
    if-le p1, p2, :cond_4

    .line 40
    const-string v0, ""

    return-object v0

    .line 43
    :cond_4
    if-gez p1, :cond_5

    .line 44
    const/4 p1, 0x0

    .line 46
    :cond_5
    if-gez p2, :cond_6

    .line 47
    const/4 p2, 0x0

    .line 50
    :cond_6
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 197
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
