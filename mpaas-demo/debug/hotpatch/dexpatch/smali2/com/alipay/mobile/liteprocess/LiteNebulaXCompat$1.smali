.class final Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat$1;
.super Ljava/lang/Object;
.source "LiteNebulaXCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat;->handleStartApp(Ljava/lang/String;I)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/liteprocess/LiteProcess;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/liteprocess/LiteProcess;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat$1;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 176
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat$1;->a:Lcom/alipay/mobile/liteprocess/LiteProcess;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Lcom/alipay/mobile/liteprocess/LiteProcess;Z)V

    .line 177
    sput-boolean v2, Lcom/alipay/mobile/liteprocess/advice/StartAppAdvice;->hasStartedliteApp:Z

    .line 178
    return-void
.end method
