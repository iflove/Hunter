.class final Lcom/mpaas/tinyapi/city/view/CitySelectActivity$5;
.super Ljava/lang/Object;
.source "CitySelectActivity.java"

# interfaces
.implements Lcom/mpaas/tinyapi/city/view/BladeView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;


# direct methods
.method constructor <init>(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    .line 287
    iput-object p1, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$5;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$5;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->b(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Lcom/mpaas/tinyapi/city/view/CityDataAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->a(Ljava/lang/String;)I

    move-result v0

    .line 291
    .local v0, "pos":I
    iget-object v1, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$5;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-static {v1}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->c(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 292
    return-void
.end method
