.class Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround$1;
.super Ljava/lang/Object;
.source "AndroidBug5497Workaround.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;-><init>(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;

    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround$1;->b:Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround$1;->b:Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround$1;->a:Z

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->a(Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    return-void

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5AndroidBug5497Workaround"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method
