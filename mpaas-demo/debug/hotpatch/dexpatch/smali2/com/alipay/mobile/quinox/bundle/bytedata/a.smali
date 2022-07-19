.class public final Lcom/alipay/mobile/quinox/bundle/bytedata/a;
.super Ljava/lang/Object;
.source "ByteDataBundle.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/bundle/IBundle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/quinox/bundle/IBundle<",
        "Lcom/alipay/mobile/quinox/bundle/bytedata/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:Ljava/lang/String;

.field e:J

.field f:Ljava/lang/String;

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field j:I

.field k:Z

.field l:Z

.field m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    .line 35
    const v0, 0x7fffffff

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->c:I

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->e:J

    .line 71
    const/16 v0, 0x7f

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->j:I

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/quinox/bundle/IBundle;)V
    .locals 2
    .param p1, "bundle"    # Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    .line 35
    const v0, 0x7fffffff

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->c:I

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->e:J

    .line 71
    const/16 v0, 0x7f

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->j:I

    .line 98
    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getVERSION()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    .line 99
    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->a:Ljava/lang/String;

    .line 100
    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->b:Ljava/lang/String;

    .line 101
    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getInitLevel()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->c:I

    .line 102
    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->d:Ljava/lang/String;

    .line 103
    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getAdler32Sum()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->e:J

    .line 104
    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getPackageNames()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->g:Ljava/util/List;

    .line 105
    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getExportPackages()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->h:Ljava/util/List;

    .line 106
    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getComponents()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->i:Ljava/util/List;

    .line 107
    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getPackageId()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->j:I

    .line 108
    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->containRes()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->k:Z

    .line 109
    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->containCode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->l:Z

    .line 110
    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getNativeLibs()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->m:Ljava/util/List;

    .line 111
    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getDependencies()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->n:Ljava/util/List;

    .line 112
    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getMD5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->f:Ljava/lang/String;

    .line 113
    return-void
.end method

.method private a(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;
    .locals 0
    .param p1, "packageNames"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/quinox/bundle/bytedata/a;"
        }
    .end annotation

    .line 348
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->g:Ljava/util/List;

    .line 349
    return-object p0
.end method

.method private a(Z)Lcom/alipay/mobile/quinox/bundle/bytedata/a;
    .locals 0
    .param p1, "containRes"    # Z

    .line 397
    iput-boolean p1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->k:Z

    .line 398
    return-object p0
.end method

.method private b(I)Lcom/alipay/mobile/quinox/bundle/bytedata/a;
    .locals 0
    .param p1, "initLevel"    # I

    .line 326
    iput p1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->c:I

    .line 327
    return-object p0
.end method

.method private b(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;
    .locals 0
    .param p1, "exportPackages"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/quinox/bundle/bytedata/a;"
        }
    .end annotation

    .line 354
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->h:Ljava/util/List;

    .line 355
    return-object p0
.end method

.method private b(Z)Lcom/alipay/mobile/quinox/bundle/bytedata/a;
    .locals 0
    .param p1, "containCode"    # Z

    .line 408
    iput-boolean p1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->l:Z

    .line 409
    return-object p0
.end method

.method private c(I)Lcom/alipay/mobile/quinox/bundle/bytedata/a;
    .locals 0
    .param p1, "VER"    # I

    .line 473
    iput p1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    .line 474
    return-object p0
.end method

.method private c(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;
    .locals 0
    .param p1, "components"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/quinox/bundle/bytedata/a;"
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->i:Ljava/util/List;

    .line 366
    return-object p0
.end method

.method private d(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;
    .locals 0
    .param p1, "nativeLibs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/quinox/bundle/bytedata/a;"
        }
    .end annotation

    .line 419
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->m:Ljava/util/List;

    .line 420
    return-object p0
.end method

.method private e(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;
    .locals 0
    .param p1, "dependencies"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/quinox/bundle/bytedata/a;"
        }
    .end annotation

    .line 425
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->n:Ljava/util/List;

    .line 426
    return-object p0
.end method


# virtual methods
.method public final a(I)Lcom/alipay/mobile/quinox/bundle/bytedata/a;
    .locals 0
    .param p1, "packageId"    # I

    .line 386
    iput p1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->j:I

    .line 387
    return-object p0
.end method

.method public final a(J)Lcom/alipay/mobile/quinox/bundle/bytedata/a;
    .locals 0
    .param p1, "size"    # J

    .line 451
    iput-wide p1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->e:J

    .line 452
    return-object p0
.end method

.method public final a(Ljava/io/BufferedInputStream;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;
    .locals 4
    .param p1, "inputStream"    # Ljava/io/BufferedInputStream;

    .line 120
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    .line 122
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 123
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString2(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->a:Ljava/lang/String;

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->a:Ljava/lang/String;

    .line 128
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    if-lt v0, v1, :cond_1

    .line 129
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString2(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->b:Ljava/lang/String;

    goto :goto_1

    .line 131
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->b:Ljava/lang/String;

    .line 134
    :goto_1
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->c:I

    .line 136
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    if-lt v0, v1, :cond_2

    .line 137
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readStringList2(Ljava/io/BufferedInputStream;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->g:Ljava/util/List;

    goto :goto_2

    .line 139
    :cond_2
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readStringList(Ljava/io/BufferedInputStream;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->g:Ljava/util/List;

    .line 143
    :goto_2
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    if-lt v0, v1, :cond_3

    .line 144
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readStringList2(Ljava/io/BufferedInputStream;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->i:Ljava/util/List;

    goto :goto_3

    .line 146
    :cond_3
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readStringList(Ljava/io/BufferedInputStream;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->i:Ljava/util/List;

    .line 148
    :goto_3
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_4

    .line 149
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->j:I

    goto :goto_4

    .line 151
    :cond_4
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 152
    .local v2, "str":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 154
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    goto :goto_4

    .line 155
    :catchall_0
    move-exception v0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Wrong packageId : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": mName="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", version="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Bundle"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_5
    const/16 v0, 0x7f

    iput v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->j:I

    .line 164
    .end local v2    # "str":Ljava/lang/String;
    :goto_4
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    if-lt v0, v1, :cond_6

    .line 165
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readBoolean2(Ljava/io/BufferedInputStream;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->l:Z

    goto :goto_5

    .line 167
    :cond_6
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readBoolean(Ljava/io/BufferedInputStream;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->l:Z

    .line 170
    :goto_5
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    if-lt v0, v1, :cond_7

    .line 171
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readBoolean2(Ljava/io/BufferedInputStream;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->k:Z

    goto :goto_6

    .line 173
    :cond_7
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readBoolean(Ljava/io/BufferedInputStream;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->k:Z

    .line 176
    :goto_6
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    if-lt v0, v1, :cond_8

    .line 177
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readStringList2(Ljava/io/BufferedInputStream;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->m:Ljava/util/List;

    goto :goto_7

    .line 179
    :cond_8
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readStringList(Ljava/io/BufferedInputStream;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->m:Ljava/util/List;

    .line 182
    :goto_7
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    if-lt v0, v1, :cond_9

    .line 183
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readStringList2(Ljava/io/BufferedInputStream;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->n:Ljava/util/List;

    goto :goto_8

    .line 185
    :cond_9
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readStringList(Ljava/io/BufferedInputStream;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->n:Ljava/util/List;

    .line 188
    :goto_8
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    if-lt v0, v1, :cond_a

    .line 189
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString2(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->d:Ljava/lang/String;

    goto :goto_9

    .line 191
    :cond_a
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->d:Ljava/lang/String;

    .line 194
    :goto_9
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    if-lt v0, v1, :cond_b

    .line 195
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readStringList2(Ljava/io/BufferedInputStream;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->h:Ljava/util/List;

    goto :goto_a

    .line 196
    :cond_b
    if-lez v0, :cond_c

    .line 197
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readStringList(Ljava/io/BufferedInputStream;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->h:Ljava/util/List;

    .line 200
    :cond_c
    :goto_a
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_d

    .line 201
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readLong(Ljava/io/BufferedInputStream;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->e:J

    .line 204
    :cond_d
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    if-lt v0, v1, :cond_e

    .line 205
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString2(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->f:Ljava/lang/String;

    goto :goto_b

    .line 206
    :cond_e
    const/4 v1, 0x4

    if-lt v0, v1, :cond_f

    .line 207
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->f:Ljava/lang/String;

    .line 210
    :cond_f
    :goto_b
    return-object p0
.end method

.method public final a(Ljava/io/BufferedOutputStream;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;
    .locals 4
    .param p1, "outputStream"    # Ljava/io/BufferedOutputStream;

    .line 214
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    .line 216
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString2(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 222
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    if-lt v0, v1, :cond_1

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString2(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    goto :goto_1

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 228
    :goto_1
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->c:I

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    .line 230
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    if-lt v0, v1, :cond_2

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->g:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeStringList2(Ljava/io/BufferedOutputStream;Ljava/util/List;)V

    goto :goto_2

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->g:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeStringList(Ljava/io/BufferedOutputStream;Ljava/util/List;)V

    .line 236
    :goto_2
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    if-lt v0, v1, :cond_3

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->i:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeStringList2(Ljava/io/BufferedOutputStream;Ljava/util/List;)V

    goto :goto_3

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->i:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeStringList(Ljava/io/BufferedOutputStream;Ljava/util/List;)V

    .line 242
    :goto_3
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_4

    .line 243
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->j:I

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeInt(Ljava/io/BufferedOutputStream;I)V

    goto :goto_4

    .line 245
    :cond_4
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->j:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 248
    :goto_4
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    if-lt v0, v1, :cond_5

    .line 249
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->l:Z

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeBoolean2(Ljava/io/BufferedOutputStream;Z)V

    goto :goto_5

    .line 251
    :cond_5
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->l:Z

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 254
    :goto_5
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    if-lt v0, v1, :cond_6

    .line 255
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->k:Z

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeBoolean2(Ljava/io/BufferedOutputStream;Z)V

    goto :goto_6

    .line 257
    :cond_6
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->k:Z

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 260
    :goto_6
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    if-lt v0, v1, :cond_7

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->m:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeStringList2(Ljava/io/BufferedOutputStream;Ljava/util/List;)V

    goto :goto_7

    .line 263
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->m:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeStringList(Ljava/io/BufferedOutputStream;Ljava/util/List;)V

    .line 266
    :goto_7
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    if-lt v0, v1, :cond_8

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->n:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeStringList2(Ljava/io/BufferedOutputStream;Ljava/util/List;)V

    goto :goto_8

    .line 269
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->n:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeStringList(Ljava/io/BufferedOutputStream;Ljava/util/List;)V

    .line 272
    :goto_8
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    if-lt v0, v1, :cond_9

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString2(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    goto :goto_9

    .line 275
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 278
    :goto_9
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    if-lt v0, v1, :cond_a

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->h:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeStringList2(Ljava/io/BufferedOutputStream;Ljava/util/List;)V

    goto :goto_a

    .line 280
    :cond_a
    if-lez v0, :cond_b

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->h:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeStringList(Ljava/io/BufferedOutputStream;Ljava/util/List;)V

    .line 284
    :cond_b
    :goto_a
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_c

    .line 285
    iget-wide v2, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->e:J

    invoke-static {p1, v2, v3}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeLong(Ljava/io/BufferedOutputStream;J)V

    .line 288
    :cond_c
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    if-lt v0, v1, :cond_d

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString2(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    goto :goto_b

    .line 290
    :cond_d
    const/4 v1, 0x4

    if-lt v0, v1, :cond_e

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 294
    :cond_e
    :goto_b
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 304
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->a:Ljava/lang/String;

    .line 305
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .line 315
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->b:Ljava/lang/String;

    .line 316
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 337
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->d:Ljava/lang/String;

    .line 338
    return-object p0
.end method

.method public final containCode()Z
    .locals 1

    .line 403
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->l:Z

    return v0
.end method

.method public final containRes()Z
    .locals 1

    .line 392
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->k:Z

    return v0
.end method

.method public final d(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;
    .locals 0
    .param p1, "md5"    # Ljava/lang/String;

    .line 462
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->f:Ljava/lang/String;

    .line 463
    return-object p0
.end method

.method public final getAdler32Sum()J
    .locals 2

    .line 446
    iget-wide v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->e:J

    return-wide v0
.end method

.method public final getComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->i:Ljava/util/List;

    return-object v0
.end method

.method public final getDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->n:Ljava/util/List;

    return-object v0
.end method

.method public final getExportPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->h:Ljava/util/List;

    return-object v0
.end method

.method public final getInitLevel()I
    .locals 1

    .line 321
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->c:I

    return v0
.end method

.method public final getLocation()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getMD5()Ljava/lang/String;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getNativeLibs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->m:Ljava/util/List;

    return-object v0
.end method

.method public final getPackageId()I
    .locals 1

    .line 381
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->j:I

    return v0
.end method

.method public final getPackageNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->g:Ljava/util/List;

    return-object v0
.end method

.method public final getSize()J
    .locals 2

    .line 436
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->getAdler32Sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getVERSION()I
    .locals 1

    .line 468
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    return v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic setAdler32Sum(J)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->a(J)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setComponents(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->c(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setContainCode(Z)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->b(Z)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setContainRes(Z)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->a(Z)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setDependencies(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->e(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setExportPackages(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->b(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setInitLevel(I)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->b(I)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setLocation(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->c(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setMD5(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->d(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setNativeLibs(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->d(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setPackageId(I)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->a(I)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setPackageNames(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->a(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setVERSION(I)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->c(I)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setVersion(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/bytedata/a;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ByteDataBundle{version="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mInitLevel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLocation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mAdler32Sum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mMD5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPackageNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->g:Ljava/util/List;

    .line 489
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mExportPackages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->h:Ljava/util/List;

    .line 490
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mComponents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->i:Ljava/util/List;

    .line 491
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPackageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mContainRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mContainCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mNativeLibs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->m:Ljava/util/List;

    .line 495
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDependencies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/bundle/bytedata/a;->n:Ljava/util/List;

    .line 496
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    return-object v0
.end method
