.class Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$2;
.super Landroid/app/DatePickerDialog;
.source "H5DatePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;ZZLcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alibaba/fastjson/JSONObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x2"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I

    .line 150
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$2;->a:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

    const/4 v2, 0x3

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-void
.end method


# virtual methods
.method protected onStop()V
    .locals 0

    .line 154
    return-void
.end method
