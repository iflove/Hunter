.class Lcom/ta/utdid2/core/persistent/FastXmlSerializer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static i:Ljava/lang/String;


# instance fields
.field private final b:[C

.field private c:I

.field private d:Ljava/io/Writer;

.field private e:Ljava/io/OutputStream;

.field private f:Ljava/nio/charset/CharsetEncoder;

.field private g:Ljava/nio/ByteBuffer;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 64

    .line 24
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-string v34, "&quot;"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-string v38, "&amp;"

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const-string v60, "&lt;"

    const/16 v61, 0x0

    const-string v62, "&gt;"

    const/16 v63, 0x0

    filled-new-array/range {v0 .. v63}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a:[Ljava/lang/String;

    .line 271
    const-string v0, "xmlpull.org/v1/doc/features.html#indent-output"

    sput-object v0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->i:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x2000

    new-array v1, v0, [C

    iput-object v1, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->b:[C

    .line 44
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->g:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a()V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    move v1, v0

    .local v1, "position":I
    if-lez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 206
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->e:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 207
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 209
    :cond_0
    return-void
.end method

.method private a(C)V
    .locals 3
    .param p1, "c"    # C

    .line 49
    iget v0, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->c:I

    const/4 v1, 0x0

    .line 50
    .local v1, "pos":I
    move v1, v0

    const/16 v2, 0x1fff

    if-lt v0, v2, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->flush()V

    .line 52
    iget v1, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->c:I

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->b:[C

    aput-char p1, v0, v1

    .line 55
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->c:I

    .line 56
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(Ljava/lang/String;II)V

    .line 98
    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "length"    # I

    .line 59
    const/16 v0, 0x2000

    if-le p3, v0, :cond_2

    .line 60
    add-int v1, p2, p3

    .line 61
    .local v1, "end":I
    :goto_0
    if-ge p2, v1, :cond_1

    .line 62
    add-int/lit16 v2, p2, 0x2000

    .line 63
    .local v2, "next":I
    if-ge v2, v1, :cond_0

    const/16 v3, 0x2000

    goto :goto_1

    :cond_0
    sub-int v3, v1, p2

    :goto_1
    invoke-direct {p0, p1, p2, v3}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(Ljava/lang/String;II)V

    .line 64
    move p2, v2

    .line 65
    .end local v2    # "next":I
    goto :goto_0

    .line 66
    :cond_1
    return-void

    .line 68
    .end local v1    # "end":I
    :cond_2
    iget v1, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->c:I

    const/4 v2, 0x0

    .line 69
    .local v2, "pos":I
    move v2, v1

    add-int/2addr v1, p3

    if-le v1, v0, :cond_3

    .line 70
    invoke-virtual {p0}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->flush()V

    .line 71
    iget v2, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->c:I

    .line 73
    :cond_3
    add-int v0, p2, p3

    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->b:[C

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 74
    add-int v0, v2, p3

    iput v0, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->c:I

    .line 75
    return-void
.end method

.method private a([CII)V
    .locals 4
    .param p1, "buf"    # [C
    .param p2, "i"    # I
    .param p3, "length"    # I

    .line 78
    const/16 v0, 0x2000

    if-le p3, v0, :cond_2

    .line 79
    add-int v1, p2, p3

    .line 80
    .local v1, "end":I
    :goto_0
    if-ge p2, v1, :cond_1

    .line 81
    add-int/lit16 v2, p2, 0x2000

    .line 82
    .local v2, "next":I
    if-ge v2, v1, :cond_0

    const/16 v3, 0x2000

    goto :goto_1

    :cond_0
    sub-int v3, v1, p2

    :goto_1
    invoke-direct {p0, p1, p2, v3}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a([CII)V

    .line 83
    move p2, v2

    .line 84
    .end local v2    # "next":I
    goto :goto_0

    .line 85
    :cond_1
    return-void

    .line 87
    .end local v1    # "end":I
    :cond_2
    iget v1, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->c:I

    const/4 v2, 0x0

    .line 88
    .local v2, "pos":I
    move v2, v1

    add-int/2addr v1, p3

    if-le v1, v0, :cond_3

    .line 89
    invoke-virtual {p0}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->flush()V

    .line 90
    iget v2, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->c:I

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->b:[C

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    add-int v0, v2, p3

    iput v0, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->c:I

    .line 94
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 8
    .param p1, "string"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 102
    .local v0, "N":I
    sget-object v1, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a:[Ljava/lang/String;

    array-length v1, v1

    int-to-char v1, v1

    .line 103
    .local v1, "NE":C
    sget-object v2, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a:[Ljava/lang/String;

    .line 104
    .local v2, "escapes":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 106
    .local v3, "lastPos":I
    const/4 v4, 0x0

    .local v4, "pos":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 107
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 108
    .local v6, "c":C
    move v6, v7

    if-ge v7, v1, :cond_1

    .line 110
    aget-object v7, v2, v6

    .line 111
    .local v5, "escape":Ljava/lang/String;
    move-object v5, v7

    if-eqz v7, :cond_1

    .line 113
    if-ge v3, v4, :cond_0

    .line 114
    sub-int v7, v4, v3

    invoke-direct {p0, p1, v3, v7}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(Ljava/lang/String;II)V

    .line 115
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .line 116
    invoke-direct {p0, v5}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(Ljava/lang/String;)V

    .line 106
    .end local v5    # "escape":Ljava/lang/String;
    .end local v6    # "c":C
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 118
    :cond_2
    if-ge v3, v4, :cond_3

    .line 119
    sub-int v5, v4, v3

    invoke-direct {p0, p1, v3, v5}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(Ljava/lang/String;II)V

    .line 120
    :cond_3
    return-void
.end method

.method private b([CII)V
    .locals 8
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .line 124
    sget-object v0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a:[Ljava/lang/String;

    array-length v0, v0

    int-to-char v0, v0

    .line 125
    .local v0, "NE":C
    sget-object v1, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a:[Ljava/lang/String;

    .line 126
    .local v1, "escapes":[Ljava/lang/String;
    add-int v2, p2, p3

    .line 127
    .local v2, "end":I
    move v3, p2

    .line 129
    .local v3, "lastPos":I
    move v4, p2

    .local v4, "pos":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 130
    aget-char v7, p1, v4

    .line 131
    .local v5, "c":C
    move v5, v7

    if-ge v7, v0, :cond_1

    .line 133
    aget-object v7, v1, v5

    .line 134
    .local v6, "escape":Ljava/lang/String;
    move-object v6, v7

    if-eqz v7, :cond_1

    .line 136
    if-ge v3, v4, :cond_0

    .line 137
    sub-int v7, v4, v3

    invoke-direct {p0, p1, v3, v7}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a([CII)V

    .line 138
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .line 139
    invoke-direct {p0, v6}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(Ljava/lang/String;)V

    .line 129
    .end local v5    # "c":C
    .end local v6    # "escape":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 141
    :cond_2
    if-ge v3, v4, :cond_3

    .line 142
    sub-int v5, v4, v3

    invoke-direct {p0, p1, v3, v5}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a([CII)V

    .line 143
    :cond_3
    return-void
.end method

.method static getFeatureUrl()Ljava/lang/String;
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 147
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(C)V

    .line 148
    if-eqz p1, :cond_0

    .line 149
    invoke-direct {p0, p1}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(Ljava/lang/String;)V

    .line 150
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(C)V

    .line 152
    :cond_0
    invoke-direct {p0, p2}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(Ljava/lang/String;)V

    .line 153
    const-string v0, "=\""

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, p3}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->b(Ljava/lang/String;)V

    .line 156
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(C)V

    .line 157
    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public comment(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 172
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public endDocument()V
    .locals 0

    .line 177
    invoke-virtual {p0}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->flush()V

    .line 178
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 182
    iget-boolean v0, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->h:Z

    if-eqz v0, :cond_0

    .line 183
    const-string v0, " />\n"

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_0
    const-string v0, "</"

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(Ljava/lang/String;)V

    .line 186
    if-eqz p1, :cond_1

    .line 187
    invoke-direct {p0, p1}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(Ljava/lang/String;)V

    .line 188
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(C)V

    .line 190
    :cond_1
    invoke-direct {p0, p2}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(Ljava/lang/String;)V

    .line 191
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(Ljava/lang/String;)V

    .line 193
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->h:Z

    .line 194
    return-object p0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 199
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public flush()V
    .locals 6

    .line 212
    iget v0, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->c:I

    if-lez v0, :cond_3

    .line 213
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->e:Ljava/io/OutputStream;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 214
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->b:[C

    invoke-static {v1, v2, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 215
    .local v0, "charBuffer":Ljava/nio/CharBuffer;
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->f:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->g:Ljava/nio/ByteBuffer;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 217
    .local v1, "result":Ljava/nio/charset/CoderResult;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v3

    if-nez v3, :cond_1

    .line 219
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a()V

    .line 221
    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->f:Ljava/nio/charset/CharsetEncoder;

    iget-object v5, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0, v5, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 222
    goto :goto_0

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a()V

    .line 227
    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->e:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 228
    .end local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .end local v1    # "result":Ljava/nio/charset/CoderResult;
    goto :goto_1

    .line 218
    .restart local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .restart local v1    # "result":Ljava/nio/charset/CoderResult;
    :cond_1
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 229
    .end local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .end local v1    # "result":Ljava/nio/charset/CoderResult;
    :cond_2
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->d:Ljava/io/Writer;

    iget-object v3, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->b:[C

    invoke-virtual {v1, v3, v2, v0}, Ljava/io/Writer;->write([CII)V

    .line 230
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->d:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 232
    :goto_1
    iput v2, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->c:I

    .line 234
    :cond_3
    return-void
.end method

.method public getDepth()I
    .locals 1

    .line 237
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 241
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 245
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 249
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "generatePrefix"    # Z

    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 268
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .line 278
    invoke-static {}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->getFeatureUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    return-void

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 286
    if-eqz p1, :cond_0

    .line 290
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->f:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    nop

    .line 298
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->e:Ljava/io/OutputStream;

    .line 303
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/UnsupportedEncodingException;

    check-cast v1, Ljava/io/UnsupportedEncodingException;

    throw v1

    .line 291
    .end local v0    # "e":Ljava/nio/charset/UnsupportedCharsetException;
    :catch_1
    move-exception v0

    .line 292
    .local v0, "e":Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/UnsupportedEncodingException;

    check-cast v1, Ljava/io/UnsupportedEncodingException;

    throw v1

    .line 287
    .end local v0    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;

    .line 307
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->d:Ljava/io/Writer;

    .line 308
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .line 312
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 317
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "standalone"    # Ljava/lang/Boolean;

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "yes"

    goto :goto_0

    :cond_0
    const-string v1, "no"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' ?>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 328
    iget-boolean v0, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->h:Z

    if-eqz v0, :cond_0

    .line 329
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(Ljava/lang/String;)V

    .line 331
    :cond_0
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(C)V

    .line 332
    if-eqz p1, :cond_1

    .line 333
    invoke-direct {p0, p1}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(Ljava/lang/String;)V

    .line 334
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(C)V

    .line 336
    :cond_1
    invoke-direct {p0, p2}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(Ljava/lang/String;)V

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->h:Z

    .line 338
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 353
    iget-boolean v0, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->h:Z

    if-eqz v0, :cond_0

    .line 354
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(Ljava/lang/String;)V

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->h:Z

    .line 357
    :cond_0
    invoke-direct {p0, p1}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->b(Ljava/lang/String;)V

    .line 358
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .line 343
    iget-boolean v0, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->h:Z

    if-eqz v0, :cond_0

    .line 344
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->a(Ljava/lang/String;)V

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->h:Z

    .line 347
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/ta/utdid2/core/persistent/FastXmlSerializer;->b([CII)V

    .line 348
    return-object p0
.end method
