.class Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$6;
.super Landroid/app/TimePickerDialog;
.source "H5DatePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZLcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;II)V
    .locals 7
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x2"    # Landroid/app/TimePickerDialog$OnTimeSetListener;
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .line 282
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$6;->a:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

    const/4 v2, 0x3

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-void
.end method


# virtual methods
.method protected onStop()V
    .locals 0

    .line 286
    return-void
.end method
