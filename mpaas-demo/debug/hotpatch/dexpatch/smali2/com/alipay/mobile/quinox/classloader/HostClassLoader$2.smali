.class final Lcom/alipay/mobile/quinox/classloader/HostClassLoader$2;
.super Ljava/lang/Object;
.source "HostClassLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/classloader/HostClassLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    .line 440
    iput-object p1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader$2;->a:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader$2;->a:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->b(Lcom/alipay/mobile/quinox/classloader/HostClassLoader;)V

    .line 444
    return-void
.end method
