.class public final Lcom/alipay/mobile/quinox/bundle/protobuf/b;
.super Lcom/squareup/wire/Message;
.source "ProtobufBundleCfg.java"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/bundle/protobuf/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/bundle/protobuf/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->a:Ljava/util/List;

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 73
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 74
    :cond_0
    instance-of v1, p1, Lcom/alipay/mobile/quinox/bundle/protobuf/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 75
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobile/quinox/bundle/protobuf/b;

    .line 76
    .local v1, "o":Lcom/alipay/mobile/quinox/bundle/protobuf/b;
    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->c:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->c:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->d:Ljava/util/List;

    iget-object v4, v1, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->d:Ljava/util/List;

    .line 77
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->e:Ljava/util/List;

    iget-object v4, v1, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->e:Ljava/util/List;

    .line 78
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    nop

    .line 76
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 83
    iget v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->hashCode:I

    const/4 v1, 0x0

    move v2, v1

    .line 84
    .local v2, "result":I
    move v2, v0

    if-nez v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 86
    :cond_0
    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->d:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    add-int/2addr v1, v0

    .line 87
    mul-int/lit8 v1, v1, 0x25

    iget-object v0, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v3

    :cond_2
    add-int v2, v1, v3

    .line 88
    iput v2, p0, Lcom/alipay/mobile/quinox/bundle/protobuf/b;->hashCode:I

    .line 90
    :cond_3
    return v2
.end method
