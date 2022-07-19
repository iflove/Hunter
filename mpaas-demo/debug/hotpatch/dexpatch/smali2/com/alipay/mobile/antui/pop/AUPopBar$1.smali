.class final Lcom/alipay/mobile/antui/pop/AUPopBar$1;
.super Ljava/lang/Object;
.source "AUPopBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/pop/AUPopBar;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/pop/AUPopBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/pop/AUPopBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/pop/AUPopBar;

    .line 77
    iput-object p1, p0, Lcom/alipay/mobile/antui/pop/AUPopBar$1;->a:Lcom/alipay/mobile/antui/pop/AUPopBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopBar$1;->a:Lcom/alipay/mobile/antui/pop/AUPopBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/pop/AUPopBar;->disappearAction()V

    .line 81
    return-void
.end method
