.class public Lcom/mpaas/tinyapi/location/ChooseLocationProcessor;
.super Lcom/mpaas/tinyapi/RequestProcessor;
.source "ChooseLocationProcessor.java"


# static fields
.field private static a:Lcom/mpaas/tinyapi/location/ChooseLocationProcessor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/mpaas/tinyapi/RequestProcessor;-><init>()V

    .line 28
    return-void
.end method

.method public static a()Lcom/mpaas/tinyapi/location/ChooseLocationProcessor;
    .locals 1

    .line 20
    sget-object v0, Lcom/mpaas/tinyapi/location/ChooseLocationProcessor;->a:Lcom/mpaas/tinyapi/location/ChooseLocationProcessor;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/mpaas/tinyapi/location/ChooseLocationProcessor;

    invoke-direct {v0}, Lcom/mpaas/tinyapi/location/ChooseLocationProcessor;-><init>()V

    sput-object v0, Lcom/mpaas/tinyapi/location/ChooseLocationProcessor;->a:Lcom/mpaas/tinyapi/location/ChooseLocationProcessor;

    .line 23
    :cond_0
    sget-object v0, Lcom/mpaas/tinyapi/location/ChooseLocationProcessor;->a:Lcom/mpaas/tinyapi/location/ChooseLocationProcessor;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/mpaas/tinyapi/ResponseModel;)V
    .locals 2
    .param p1, "response"    # Lcom/mpaas/tinyapi/ResponseModel;

    .line 43
    instance-of v0, p1, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "response type not valid "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooseLocationProcessor"

    invoke-static {v1, v0}, Lcom/mpaas/mas/adapter/api/MPLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void

    .line 48
    :cond_0
    invoke-super {p0, p1}, Lcom/mpaas/tinyapi/RequestProcessor;->a(Lcom/mpaas/tinyapi/ResponseModel;)V

    .line 49
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/mpaas/tinyapi/RequestEntity;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entity"    # Lcom/mpaas/tinyapi/RequestEntity;

    .line 32
    invoke-virtual {p2}, Lcom/mpaas/tinyapi/RequestEntity;->b()Lcom/mpaas/tinyapi/RequestType;

    move-result-object v0

    sget-object v1, Lcom/mpaas/tinyapi/RequestType;->CHOOSE_LOCATION:Lcom/mpaas/tinyapi/RequestType;

    if-eq v0, v1, :cond_0

    .line 33
    const/4 v0, 0x0

    return v0

    .line 35
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 36
    .local v1, "intent":Landroid/content/Intent;
    move-object v1, v0

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    invoke-virtual {p2}, Lcom/mpaas/tinyapi/RequestEntity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "serviceId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    const/4 v0, 0x1

    return v0
.end method
