.class public Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;
.super Ljava/lang/Object;
.source "TinyAppActionState.java"


# static fields
.field public static final ACTION_BLUE_TOOTH:Ljava/lang/String; = "bluetooth"

.field public static final ACTION_LOCATION:Ljava/lang/String; = "location"

.field public static final ACTION_RECORD:Ljava/lang/String; = "record"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mCount:I

.field private mDuplicate:Z

.field private final mTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "duplicate"    # Z

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->mAction:Ljava/lang/String;

    .line 29
    iput-boolean p2, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->mDuplicate:Z

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->mTypeMap:Ljava/util/Map;

    .line 31
    return-void
.end method


# virtual methods
.method public decreaseCount(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->mTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 51
    .local v1, "count":Ljava/lang/Integer;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 53
    move-object v1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->mTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->mTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->mCount:I

    .line 60
    :cond_1
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->mCount:I

    return v0
.end method

.method public increaseCount(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->mTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 39
    .local v1, "count":Ljava/lang/Integer;
    move-object v1, v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 41
    .end local v1    # "count":Ljava/lang/Integer;
    .local v0, "count":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->mTypeMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget v1, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->mCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->mCount:I

    return-void

    .line 43
    .end local v0    # "count":Ljava/lang/Integer;
    .restart local v1    # "count":Ljava/lang/Integer;
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->mDuplicate:Z

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->mTypeMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->mCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->mCount:I

    .line 47
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TinyAppActionState{mAction=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mDuplicate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->mDuplicate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTypeMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->mTypeMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionState;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
