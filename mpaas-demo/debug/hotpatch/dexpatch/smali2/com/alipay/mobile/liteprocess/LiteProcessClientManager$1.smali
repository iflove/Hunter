.class final Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$1;
.super Ljava/lang/Object;
.source "LiteProcessClientManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->c(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$1;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->a(Landroid/content/Intent;)V

    .line 286
    return-void
.end method
