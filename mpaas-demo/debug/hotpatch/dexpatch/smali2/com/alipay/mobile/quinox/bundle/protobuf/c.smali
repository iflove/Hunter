.class public final Lcom/alipay/mobile/quinox/bundle/protobuf/c;
.super Ljava/lang/Object;
.source "ProtobufBundleProxy.java"

# interfaces
.implements Lcom/alipay/mobile/quinox/bundle/IBundle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/quinox/bundle/IBundle<",
        "Lcom/alipay/mobile/quinox/bundle/protobuf/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/bundle/protobuf/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/quinox/bundle/IBundle;)V
    .locals 3
    .param p1, "bundle"    # Lcom/alipay/mobile/quinox/bundle/IBundle;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/bundle/protobuf/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    .line 17
    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getVERSION()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->l:Ljava/lang/Integer;

    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->m:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->n:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getLocation()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->o:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->p:Ljava/lang/Long;

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getMD5()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->q:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getInitLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->r:Ljava/lang/Integer;

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getPackageId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->s:Ljava/lang/Integer;

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->containRes()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->t:Ljava/lang/Boolean;

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->containCode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->u:Ljava/lang/Boolean;

    .line 28
    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getPackageNames()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getPackageNames()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->v:Ljava/util/List;

    .line 32
    :cond_0
    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getExportPackages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getExportPackages()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->w:Ljava/util/List;

    .line 36
    :cond_1
    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getComponents()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getComponents()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->x:Ljava/util/List;

    .line 40
    :cond_2
    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getNativeLibs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getNativeLibs()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->y:Ljava/util/List;

    .line 44
    :cond_3
    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getDependencies()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/alipay/mobile/quinox/bundle/IBundle;->getDependencies()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->z:Ljava/util/List;

    .line 47
    :cond_4
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/quinox/bundle/protobuf/a;)V
    .locals 0
    .param p1, "bundle"    # Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    .line 55
    return-void
.end method

.method private a(I)Lcom/alipay/mobile/quinox/bundle/protobuf/c;
    .locals 2
    .param p1, "initLevel"    # I

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->r:Ljava/lang/Integer;

    .line 105
    return-object p0
.end method

.method private a(J)Lcom/alipay/mobile/quinox/bundle/protobuf/c;
    .locals 2
    .param p1, "size"    # J

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->p:Ljava/lang/Long;

    .line 224
    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/protobuf/c;
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iput-object p1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->o:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method private a(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/protobuf/c;
    .locals 1
    .param p1, "packageNames"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/quinox/bundle/protobuf/c;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iput-object p1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->v:Ljava/util/List;

    .line 116
    return-object p0
.end method

.method private a(Z)Lcom/alipay/mobile/quinox/bundle/protobuf/c;
    .locals 2
    .param p1, "containRes"    # Z

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->t:Ljava/lang/Boolean;

    .line 163
    return-object p0
.end method

.method private b(I)Lcom/alipay/mobile/quinox/bundle/protobuf/c;
    .locals 2
    .param p1, "packageId"    # I

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->s:Ljava/lang/Integer;

    .line 152
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/protobuf/c;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iput-object p1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->m:Ljava/lang/String;

    .line 80
    return-object p0
.end method

.method private b(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/protobuf/c;
    .locals 1
    .param p1, "exportPackages"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/quinox/bundle/protobuf/c;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iput-object p1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->w:Ljava/util/List;

    .line 127
    return-object p0
.end method

.method private b(Z)Lcom/alipay/mobile/quinox/bundle/protobuf/c;
    .locals 2
    .param p1, "containCode"    # Z

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->u:Ljava/lang/Boolean;

    .line 174
    return-object p0
.end method

.method private c(I)Lcom/alipay/mobile/quinox/bundle/protobuf/c;
    .locals 2
    .param p1, "VER"    # I

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->l:Ljava/lang/Integer;

    .line 249
    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/protobuf/c;
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iput-object p1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->n:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method private c(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/protobuf/c;
    .locals 1
    .param p1, "components"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/quinox/bundle/protobuf/c;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iput-object p1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->x:Ljava/util/List;

    .line 138
    return-object p0
.end method

.method private d(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/protobuf/c;
    .locals 1
    .param p1, "md5"    # Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iput-object p1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->q:Ljava/lang/String;

    .line 235
    return-object p0
.end method

.method private d(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/protobuf/c;
    .locals 1
    .param p1, "nativeLibs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/quinox/bundle/protobuf/c;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iput-object p1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->y:Ljava/util/List;

    .line 185
    return-object p0
.end method

.method private e(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/protobuf/c;
    .locals 1
    .param p1, "dependencies"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/quinox/bundle/protobuf/c;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iput-object p1, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->z:Ljava/util/List;

    .line 196
    return-object p0
.end method


# virtual methods
.method public final a()Lcom/alipay/mobile/quinox/bundle/protobuf/a;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    return-object v0
.end method

.method public final containCode()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->u:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->u:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final containRes()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->t:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->t:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getAdler32Sum()J
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->p:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 216
    const-wide/16 v0, 0x0

    return-wide v0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->p:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

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

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->x:Ljava/util/List;

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

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->z:Ljava/util/List;

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

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->w:Ljava/util/List;

    return-object v0
.end method

.method public final getInitLevel()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->r:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 97
    const v0, 0x7fffffff

    return v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->r:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getLocation()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final getMD5()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->m:Ljava/lang/String;

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

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->y:Ljava/util/List;

    return-object v0
.end method

.method public final getPackageId()I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->s:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 144
    const/16 v0, 0x7f

    return v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->s:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

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

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->v:Ljava/util/List;

    return-object v0
.end method

.method public final getSize()J
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->p:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 202
    const-wide/16 v0, 0x0

    return-wide v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->p:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getVERSION()I
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->l:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 241
    const/4 v0, 0x0

    return v0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->l:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a:Lcom/alipay/mobile/quinox/bundle/protobuf/a;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/bundle/protobuf/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic setAdler32Sum(J)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a(J)Lcom/alipay/mobile/quinox/bundle/protobuf/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setComponents(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->c(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/protobuf/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setContainCode(Z)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->b(Z)Lcom/alipay/mobile/quinox/bundle/protobuf/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setContainRes(Z)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a(Z)Lcom/alipay/mobile/quinox/bundle/protobuf/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setDependencies(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->e(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/protobuf/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setExportPackages(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->b(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/protobuf/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setInitLevel(I)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a(I)Lcom/alipay/mobile/quinox/bundle/protobuf/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setLocation(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/protobuf/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setMD5(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->d(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/protobuf/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/protobuf/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setNativeLibs(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->d(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/protobuf/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setPackageId(I)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->b(I)Lcom/alipay/mobile/quinox/bundle/protobuf/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setPackageNames(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->a(Ljava/util/List;)Lcom/alipay/mobile/quinox/bundle/protobuf/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setVERSION(I)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->c(I)Lcom/alipay/mobile/quinox/bundle/protobuf/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setVersion(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/IBundle;
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/protobuf/c;->c(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/protobuf/c;

    move-result-object p1

    return-object p1
.end method
