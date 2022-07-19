.class Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation$1;
.super Ljava/lang/Object;
.source "PreloadInstrumentation.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;->restartComponent(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;

    .line 72
    iput-object p1, p0, Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation$1;->this$0:Lcom/alipay/mobile/quinox/preload/PreloadInstrumentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 76
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 81
    return-void
.end method
