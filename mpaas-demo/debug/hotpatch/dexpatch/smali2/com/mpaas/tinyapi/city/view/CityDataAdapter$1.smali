.class final Lcom/mpaas/tinyapi/city/view/CityDataAdapter$1;
.super Ljava/lang/Object;
.source "CityDataAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mpaas/tinyapi/city/view/City;

.field final synthetic b:Lcom/mpaas/tinyapi/city/view/CityDataAdapter;


# direct methods
.method constructor <init>(Lcom/mpaas/tinyapi/city/view/CityDataAdapter;Lcom/mpaas/tinyapi/city/view/City;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mpaas/tinyapi/city/view/CityDataAdapter;

    .line 172
    iput-object p1, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter$1;->b:Lcom/mpaas/tinyapi/city/view/CityDataAdapter;

    iput-object p2, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter$1;->a:Lcom/mpaas/tinyapi/city/view/City;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter$1;->b:Lcom/mpaas/tinyapi/city/view/CityDataAdapter;

    iget-object v1, p0, Lcom/mpaas/tinyapi/city/view/CityDataAdapter$1;->a:Lcom/mpaas/tinyapi/city/view/City;

    invoke-static {v0, v1}, Lcom/mpaas/tinyapi/city/view/CityDataAdapter;->a(Lcom/mpaas/tinyapi/city/view/CityDataAdapter;Lcom/mpaas/tinyapi/city/view/City;)V

    .line 176
    return-void
.end method
