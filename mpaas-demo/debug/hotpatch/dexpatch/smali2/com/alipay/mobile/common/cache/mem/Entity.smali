.class public Lcom/alipay/mobile/common/cache/mem/Entity;
.super Ljava/lang/Object;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mGroup:Ljava/lang/String;

.field protected mOwner:Ljava/lang/String;

.field protected mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_0

    .line 29
    const-string v0, "-"

    iput-object v0, p0, Lcom/alipay/mobile/common/cache/mem/Entity;->mOwner:Ljava/lang/String;

    goto :goto_0

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/common/cache/mem/Entity;->mOwner:Ljava/lang/String;

    .line 33
    :goto_0
    iput-object p2, p0, Lcom/alipay/mobile/common/cache/mem/Entity;->mGroup:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/alipay/mobile/common/cache/mem/Entity;->mValue:Ljava/lang/Object;

    .line 35
    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;)Z
    .locals 4
    .param p1, "owner"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/mem/Entity;->mOwner:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 66
    return v1

    .line 69
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 70
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "Entity"

    const-string v3, "authenticate: owner is null"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return v0

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/cache/mem/Entity;->mOwner:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    return v1

    .line 75
    :cond_2
    return v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/mem/Entity;->mGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/mem/Entity;->mOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/mem/Entity;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/mobile/common/cache/mem/Entity;->mValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "value: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
