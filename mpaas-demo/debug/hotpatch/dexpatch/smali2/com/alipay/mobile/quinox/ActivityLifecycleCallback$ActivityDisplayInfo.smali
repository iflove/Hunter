.class public Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$ActivityDisplayInfo;
.super Ljava/lang/Object;
.source "ActivityLifecycleCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityDisplayInfo"
.end annotation


# instance fields
.field public final mName:Ljava/lang/String;

.field public final mVisible:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$ActivityDisplayInfo;->mName:Ljava/lang/String;

    .line 286
    iput-boolean p2, p0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$ActivityDisplayInfo;->mVisible:Z

    .line 287
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$ActivityDisplayInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$ActivityDisplayInfo;->mVisible:Z

    if-eqz v1, :cond_0

    const-string v1, "start"

    goto :goto_0

    :cond_0
    const-string v1, "stop"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
