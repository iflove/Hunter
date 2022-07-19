.class public Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;
.super Ljava/lang/Object;
.source "TarHeader.java"


# static fields
.field public static final CHKSUMLEN:I = 0x8

.field public static final GIDLEN:I = 0x8

.field public static final LF_BLK:B = 0x34t

.field public static final LF_CHR:B = 0x33t

.field public static final LF_CONTIG:B = 0x37t

.field public static final LF_DIR:B = 0x35t

.field public static final LF_FIFO:B = 0x36t

.field public static final LF_LINK:B = 0x31t

.field public static final LF_NORMAL:B = 0x30t

.field public static final LF_OLDNORM:B = 0x0t

.field public static final LF_SYMLINK:B = 0x32t

.field public static final MODELEN:I = 0x8

.field public static final MODTIMELEN:I = 0xc

.field public static final NAMELEN:I = 0x64

.field public static final SIZELEN:I = 0xc

.field public static final UIDLEN:I = 0x8

.field public static final USTAR_DEVLEN:I = 0x8

.field public static final USTAR_FILENAME_PREFIX:I = 0x9b

.field public static final USTAR_GROUP_NAMELEN:I = 0x20

.field public static final USTAR_MAGIC:Ljava/lang/String; = "ustar"

.field public static final USTAR_MAGICLEN:I = 0x8

.field public static final USTAR_USER_NAMELEN:I = 0x20


# instance fields
.field public checkSum:I

.field public devMajor:I

.field public devMinor:I

.field public groupId:I

.field public groupName:Ljava/lang/StringBuffer;

.field public linkFlag:B

.field public linkName:Ljava/lang/StringBuffer;

.field public magic:Ljava/lang/StringBuffer;

.field public modTime:J

.field public mode:I

.field public name:Ljava/lang/StringBuffer;

.field public namePrefix:Ljava/lang/StringBuffer;

.field public size:J

.field public userId:I

.field public userName:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "ustar"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->magic:Ljava/lang/StringBuffer;

    .line 84
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->name:Ljava/lang/StringBuffer;

    .line 85
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->linkName:Ljava/lang/StringBuffer;

    .line 87
    const-string/jumbo v0, "user.name"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 89
    .local v2, "user":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x1f

    const/4 v4, 0x0

    if-le v0, v3, :cond_0

    .line 90
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 93
    :cond_0
    iput v4, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->userId:I

    .line 94
    iput v4, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->groupId:I

    .line 95
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->userName:Ljava/lang/StringBuffer;

    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->groupName:Ljava/lang/StringBuffer;

    .line 97
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    .line 98
    return-void
.end method

.method public static createHeader(Ljava/lang/String;JJZ)Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;
    .locals 6
    .param p0, "entryName"    # Ljava/lang/String;
    .param p1, "size"    # J
    .param p3, "modTime"    # J
    .param p5, "dir"    # Z

    .line 131
    const/4 v0, 0x0

    move-object v1, v0

    .line 132
    .local v1, "name":Ljava/lang/String;
    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->trim(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 134
    new-instance v2, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    invoke-direct {v2}, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;-><init>()V

    .line 135
    .local v0, "header":Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;
    move-object v0, v2

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v4, v2, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->linkName:Ljava/lang/StringBuffer;

    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    const/16 v5, 0x64

    if-le v2, v5, :cond_0

    .line 138
    new-instance v2, Ljava/lang/StringBuffer;

    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 138
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    .line 140
    new-instance v2, Ljava/lang/StringBuffer;

    .line 141
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->name:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 143
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->name:Ljava/lang/StringBuffer;

    .line 146
    :goto_0
    if-eqz p5, :cond_2

    .line 147
    const/16 v2, 0x41ed

    iput v2, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->mode:I

    .line 148
    const/16 v2, 0x35

    iput-byte v2, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->linkFlag:B

    .line 149
    iget-object v2, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_1

    .line 150
    iget-object v2, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->name:Ljava/lang/StringBuffer;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->size:J

    goto :goto_1

    .line 154
    :cond_2
    const v2, 0x81a4

    iput v2, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->mode:I

    .line 155
    const/16 v2, 0x30

    iput-byte v2, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->linkFlag:B

    .line 156
    iput-wide p1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->size:J

    .line 159
    :goto_1
    iput-wide p3, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->modTime:J

    .line 160
    iput v4, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->checkSum:I

    .line 161
    iput v4, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->devMajor:I

    .line 162
    iput v4, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->devMinor:I

    .line 164
    return-object v0
.end method

.method public static getNameBytes(Ljava/lang/StringBuffer;[BII)I
    .locals 3
    .param p0, "name"    # Ljava/lang/StringBuffer;
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 119
    add-int v1, p2, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    :goto_1
    if-ge v0, p3, :cond_1

    .line 123
    add-int v1, p2, v0

    const/4 v2, 0x0

    aput-byte v2, p1, v1

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 126
    :cond_1
    add-int v1, p2, p3

    return v1
.end method

.method public static parseName([BII)Ljava/lang/StringBuffer;
    .locals 4
    .param p0, "header"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 103
    .local v0, "result":Ljava/lang/StringBuffer;
    add-int v1, p1, p2

    .line 104
    .local v1, "end":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 105
    aget-byte v3, p0, v2

    if-eqz v3, :cond_0

    .line 108
    aget-byte v3, p0, v2

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public static trim(Ljava/lang/String;C)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "c"    # C

    .line 168
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "tmp":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_0

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_1

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 177
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 185
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
