.class Lcom/alipay/mobile/nebulax/engine/a/d/d$1;
.super Ljava/lang/Object;
.source "NXWebView.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/kernel/extension/resolver/ResultResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/d;->load(Lcom/alipay/mobile/nebulax/engine/api/model/LoadParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/nebulax/kernel/extension/resolver/ResultResolver<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/a/d/d;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/d;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d$1;->a:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 257
    const/4 v0, 0x1

    .line 258
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 257
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 260
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 261
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 262
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 263
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/common/b/a;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 264
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/a/d/d$1$1;

    invoke-direct {p1, p0}, Lcom/alipay/mobile/nebulax/engine/a/d/d$1$1;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/d$1;)V

    invoke-static {p1}, Lcom/alipay/mobile/nebulax/common/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 271
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d$1;->a:Lcom/alipay/mobile/nebulax/engine/a/d/d;

    invoke-static {p1}, Lcom/alipay/mobile/nebulax/engine/a/d/d;->a(Lcom/alipay/mobile/nebulax/engine/a/d/d;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldLoad false in index "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " !!!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 260
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    :cond_3
    return-object v0

    .line 258
    :cond_4
    :goto_1
    return-object v0
.end method

.method public synthetic resolve(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 254
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/d$1;->a(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
