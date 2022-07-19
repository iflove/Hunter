.class final Lcom/alipay/mobile/antui/segement/AUSegment$1;
.super Ljava/lang/Object;
.source "AUSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/segement/AUSegment;->setTabSwitchListener(Lcom/alipay/mobile/antui/segement/AUSegment$TabSwitchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/alipay/mobile/antui/segement/AUSegment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/segement/AUSegment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/segement/AUSegment;

    .line 544
    iput-object p1, p0, Lcom/alipay/mobile/antui/segement/AUSegment$1;->b:Lcom/alipay/mobile/antui/segement/AUSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment$1;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View$OnClickListener;
    .locals 0
    .param p1, "position"    # I

    .line 548
    iput p1, p0, Lcom/alipay/mobile/antui/segement/AUSegment$1;->a:I

    .line 549
    return-object p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 554
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment$1;->b:Lcom/alipay/mobile/antui/segement/AUSegment;

    iget v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment$1;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/segement/AUSegment;->selectTabAndAdjustLine(I)V

    .line 555
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment$1;->b:Lcom/alipay/mobile/antui/segement/AUSegment;

    # getter for: Lcom/alipay/mobile/antui/segement/AUSegment;->tabSwitchListener:Lcom/alipay/mobile/antui/segement/AUSegment$TabSwitchListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->access$000(Lcom/alipay/mobile/antui/segement/AUSegment;)Lcom/alipay/mobile/antui/segement/AUSegment$TabSwitchListener;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment$1;->a:I

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/antui/segement/AUSegment$TabSwitchListener;->onTabClick(ILandroid/view/View;)V

    .line 556
    return-void
.end method
