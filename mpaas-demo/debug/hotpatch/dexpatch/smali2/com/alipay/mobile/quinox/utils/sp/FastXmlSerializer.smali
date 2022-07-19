.class public Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;
.super Ljava/lang/Object;
.source "FastXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final BUFFER_LEN:I = 0x2000

.field private static final ESCAPE_TABLE:[Ljava/lang/String;

.field private static volatile mCharset:Ljava/nio/charset/CharsetEncoder;

.field private static sSpace:Ljava/lang/String;


# instance fields
.field private mBytes:Ljava/nio/ByteBuffer;

.field private mInTag:Z

.field private mIndent:Z

.field private mLineStart:Z

.field private mNesting:I

.field private mOutputStream:Ljava/io/OutputStream;

.field private mPos:I

.field private final mText:[C

.field private mWriter:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 64

    .line 37
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

    sput-object v0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 50
    const-string v0, "                                                              "

    sput-object v0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->sSpace:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0x2000

    new-array v1, v0, [C

    iput-object v1, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mText:[C

    .line 59
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mIndent:Z

    .line 64
    iput v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mNesting:I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mLineStart:Z

    return-void
.end method

.method private append(C)V
    .locals 3
    .param p1, "c"    # C

    .line 68
    iget v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mPos:I

    const/4 v1, 0x0

    .line 69
    .local v1, "pos":I
    move v1, v0

    const/16 v2, 0x1fff

    if-lt v0, v2, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->flush()V

    .line 71
    iget v1, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mPos:I

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mText:[C

    aput-char p1, v0, v1

    .line 74
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mPos:I

    .line 75
    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 117
    return-void
.end method

.method private append(Ljava/lang/String;II)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
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
    invoke-direct {p0, p1, p2, v3}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(Ljava/lang/String;II)V

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
    iget v1, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mPos:I

    const/4 v2, 0x0

    .line 88
    .local v2, "pos":I
    move v2, v1

    add-int/2addr v1, p3

    if-le v1, v0, :cond_3

    .line 89
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->flush()V

    .line 90
    iget v2, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mPos:I

    .line 92
    :cond_3
    add-int v0, p2, p3

    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mText:[C

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 93
    add-int v0, v2, p3

    iput v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mPos:I

    .line 94
    return-void
.end method

.method private append([CII)V
    .locals 4
    .param p1, "buf"    # [C
    .param p2, "i"    # I
    .param p3, "length"    # I

    .line 97
    const/16 v0, 0x2000

    if-le p3, v0, :cond_2

    .line 98
    add-int v1, p2, p3

    .line 99
    .local v1, "end":I
    :goto_0
    if-ge p2, v1, :cond_1

    .line 100
    add-int/lit16 v2, p2, 0x2000

    .line 101
    .local v2, "next":I
    if-ge v2, v1, :cond_0

    const/16 v3, 0x2000

    goto :goto_1

    :cond_0
    sub-int v3, v1, p2

    :goto_1
    invoke-direct {p0, p1, p2, v3}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append([CII)V

    .line 102
    move p2, v2

    .line 103
    .end local v2    # "next":I
    goto :goto_0

    .line 104
    :cond_1
    return-void

    .line 106
    .end local v1    # "end":I
    :cond_2
    iget v1, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mPos:I

    const/4 v2, 0x0

    .line 107
    .local v2, "pos":I
    move v2, v1

    add-int/2addr v1, p3

    if-le v1, v0, :cond_3

    .line 108
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->flush()V

    .line 109
    iget v2, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mPos:I

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mText:[C

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    add-int v0, v2, p3

    iput v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mPos:I

    .line 113
    return-void
.end method

.method private appendIndent(I)V
    .locals 2
    .param p1, "indent"    # I

    .line 120
    mul-int/lit8 v0, p1, 0x4

    .line 121
    move p1, v0

    sget-object v1, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->sSpace:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 122
    sget-object v0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->sSpace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    .line 124
    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->sSpace:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 125
    return-void
.end method

.method private escapeAndAppendString(Ljava/lang/String;)V
    .locals 8
    .param p1, "string"    # Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 129
    .local v0, "N":I
    sget-object v1, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v1, v1

    int-to-char v1, v1

    .line 130
    .local v1, "NE":C
    sget-object v2, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 131
    .local v2, "escapes":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 133
    .local v3, "lastPos":I
    const/4 v4, 0x0

    .local v4, "pos":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 134
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 135
    .local v6, "c":C
    move v6, v7

    if-ge v7, v1, :cond_1

    .line 136
    aget-object v7, v2, v6

    .line 137
    .local v5, "escape":Ljava/lang/String;
    move-object v5, v7

    if-eqz v7, :cond_1

    .line 138
    if-ge v3, v4, :cond_0

    sub-int v7, v4, v3

    invoke-direct {p0, p1, v3, v7}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 139
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .line 140
    invoke-direct {p0, v5}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 133
    .end local v5    # "escape":Ljava/lang/String;
    .end local v6    # "c":C
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 142
    :cond_2
    if-ge v3, v4, :cond_3

    sub-int v5, v4, v3

    invoke-direct {p0, p1, v3, v5}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 143
    :cond_3
    return-void
.end method

.method private escapeAndAppendString([CII)V
    .locals 8
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .line 146
    sget-object v0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v0, v0

    int-to-char v0, v0

    .line 147
    .local v0, "NE":C
    sget-object v1, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 148
    .local v1, "escapes":[Ljava/lang/String;
    add-int v2, p2, p3

    .line 149
    .local v2, "end":I
    move v3, p2

    .line 151
    .local v3, "lastPos":I
    move v4, p2

    .local v4, "pos":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 152
    aget-char v7, p1, v4

    .line 153
    .local v5, "c":C
    move v5, v7

    if-ge v7, v0, :cond_1

    .line 154
    aget-object v7, v1, v5

    .line 155
    .local v6, "escape":Ljava/lang/String;
    move-object v6, v7

    if-eqz v7, :cond_1

    .line 156
    if-ge v3, v4, :cond_0

    sub-int v7, v4, v3

    invoke-direct {p0, p1, v3, v7}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append([CII)V

    .line 157
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .line 158
    invoke-direct {p0, v6}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 151
    .end local v5    # "c":C
    .end local v6    # "escape":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 160
    :cond_2
    if-ge v3, v4, :cond_3

    sub-int v5, v4, v3

    invoke-direct {p0, p1, v3, v5}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append([CII)V

    .line 161
    :cond_3
    return-void
.end method

.method private flushBytes()V
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    move v1, v0

    .local v1, "position":I
    if-lez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 232
    :cond_0
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 165
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(C)V

    .line 166
    if-eqz p1, :cond_0

    .line 167
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 168
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(C)V

    .line 170
    :cond_0
    invoke-direct {p0, p2}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 171
    const-string v0, "=\""

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, p3}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    .line 174
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(C)V

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mLineStart:Z

    .line 176
    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 181
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public comment(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public endDocument()V
    .locals 0

    .line 195
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->flush()V

    .line 196
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 200
    iget v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mNesting:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mNesting:I

    .line 201
    iget-boolean v2, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mInTag:Z

    if-eqz v2, :cond_0

    .line 202
    const-string v0, " />\n"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_0
    iget-boolean v2, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mIndent:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mLineStart:Z

    if-eqz v2, :cond_1

    .line 205
    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->appendIndent(I)V

    .line 207
    :cond_1
    const-string v0, "</"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 208
    if-eqz p1, :cond_2

    .line 209
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 210
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(C)V

    .line 212
    :cond_2
    invoke-direct {p0, p2}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 213
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 215
    :goto_0
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mLineStart:Z

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mInTag:Z

    .line 217
    return-object p0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public flush()V
    .locals 6

    .line 236
    iget v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mPos:I

    if-lez v0, :cond_3

    .line 237
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 238
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mText:[C

    invoke-static {v1, v2, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 239
    .local v0, "charBuffer":Ljava/nio/CharBuffer;
    sget-object v1, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 241
    .local v1, "result":Ljava/nio/charset/CoderResult;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v3

    if-nez v3, :cond_1

    .line 243
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->flushBytes()V

    .line 245
    sget-object v3, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v5, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0, v5, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 246
    goto :goto_0

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->flushBytes()V

    .line 251
    iget-object v3, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 252
    .end local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .end local v1    # "result":Ljava/nio/charset/CoderResult;
    goto :goto_1

    .line 242
    .restart local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .restart local v1    # "result":Ljava/nio/charset/CoderResult;
    :cond_1
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    .end local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .end local v1    # "result":Ljava/nio/charset/CoderResult;
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mText:[C

    invoke-virtual {v1, v3, v2, v0}, Ljava/io/Writer;->write([CII)V

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 256
    :goto_1
    iput v2, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mPos:I

    .line 258
    :cond_3
    return-void
.end method

.method public getDepth()I
    .locals 1

    .line 261
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 265
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 269
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 273
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "generatePrefix"    # Z

    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 282
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 292
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .line 297
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mIndent:Z

    .line 299
    return-void

    .line 301
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 306
    if-eqz p1, :cond_1

    .line 309
    const-class v0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;

    monitor-enter v0

    .line 310
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    if-nez v1, :cond_0

    .line 311
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    .line 313
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    iput-object p1, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    .line 332
    return-void

    .line 313
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 307
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;

    .line 336
    iput-object p1, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    .line 337
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .line 341
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 346
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "standalone"    # Ljava/lang/Boolean;

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
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

    .line 351
    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mLineStart:Z

    .line 354
    return-void
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 358
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_0

    .line 359
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 361
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_1

    .line 362
    iget v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mNesting:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->appendIndent(I)V

    .line 364
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mNesting:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mNesting:I

    .line 365
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(C)V

    .line 366
    if-eqz p1, :cond_2

    .line 367
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 368
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(C)V

    .line 370
    :cond_2
    invoke-direct {p0, p2}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 371
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mInTag:Z

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mLineStart:Z

    .line 373
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .line 391
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mInTag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 392
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 393
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mInTag:Z

    .line 395
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    .line 396
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_2

    .line 397
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mLineStart:Z

    .line 399
    :cond_2
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 4
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .line 378
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mInTag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 379
    const-string v0, ">"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 380
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mInTag:Z

    .line 382
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->escapeAndAppendString([CII)V

    .line 383
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_2

    .line 384
    add-int v0, p2, p3

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    aget-char v0, p1, v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/utils/sp/FastXmlSerializer;->mLineStart:Z

    .line 386
    :cond_2
    return-object p0
.end method
