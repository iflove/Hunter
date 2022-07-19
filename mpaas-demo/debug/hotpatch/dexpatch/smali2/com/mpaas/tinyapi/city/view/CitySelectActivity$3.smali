.class final Lcom/mpaas/tinyapi/city/view/CitySelectActivity$3;
.super Ljava/lang/Object;
.source "CitySelectActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/tinyapi/city/view/CitySelectActivity;->a(Landroid/content/Intent;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/mpaas/tinyapi/city/view/City;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;


# direct methods
.method constructor <init>(Lcom/mpaas/tinyapi/city/view/CitySelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    .line 156
    iput-object p1, p0, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$3;->a:Lcom/mpaas/tinyapi/city/view/CitySelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/mpaas/tinyapi/city/view/City;Lcom/mpaas/tinyapi/city/view/City;)I
    .locals 2
    .param p0, "o1"    # Lcom/mpaas/tinyapi/city/view/City;
    .param p1, "o2"    # Lcom/mpaas/tinyapi/city/view/City;

    .line 159
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/City;->pinyin:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/mpaas/tinyapi/city/view/City;->pinyin:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    return v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/City;->pinyin:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 164
    const/4 v0, -0x1

    return v0

    .line 167
    :cond_1
    iget-object v0, p1, Lcom/mpaas/tinyapi/city/view/City;->pinyin:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 168
    const/4 v0, 0x1

    return v0

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/mpaas/tinyapi/city/view/City;->pinyin:Ljava/lang/String;

    iget-object v1, p1, Lcom/mpaas/tinyapi/city/view/City;->pinyin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 156
    check-cast p1, Lcom/mpaas/tinyapi/city/view/City;

    check-cast p2, Lcom/mpaas/tinyapi/city/view/City;

    invoke-static {p1, p2}, Lcom/mpaas/tinyapi/city/view/CitySelectActivity$3;->a(Lcom/mpaas/tinyapi/city/view/City;Lcom/mpaas/tinyapi/city/view/City;)I

    move-result p1

    return p1
.end method
