.class Lcom/alipay/mobile/nebulax/engine/common/c/a$1;
.super Ljava/lang/Object;
.source "BaseNXView.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/kernel/extension/resolver/ResultResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/common/c/a;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/common/c/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/common/c/a;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/common/c/a$1;->a:Lcom/alipay/mobile/nebulax/engine/common/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Ljava/util/List;)Ljava/lang/Object;
    .locals 3

    .line 95
    const/4 v0, 0x0

    .line 96
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 95
    if-nez p1, :cond_0

    .line 96
    return-object v0

    .line 98
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 99
    instance-of v2, v1, Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 100
    goto :goto_0

    .line 102
    :cond_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 105
    :cond_2
    goto :goto_0

    .line 106
    :cond_3
    return-object v0
.end method
