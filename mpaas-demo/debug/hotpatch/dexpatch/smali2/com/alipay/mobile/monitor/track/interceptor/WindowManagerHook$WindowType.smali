.class public final enum Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;
.super Ljava/lang/Enum;
.source "WindowManagerHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WindowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

.field public static final enum Activity:Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

.field public static final enum DecorView:Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

.field public static final enum Dialog:Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

.field public static final enum PopupWindows:Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 284
    new-instance v0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

    const-string v1, "Activity"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;->Activity:Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

    new-instance v1, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

    const-string v3, "DecorView"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;->DecorView:Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

    new-instance v3, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

    const-string v5, "Dialog"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;->Dialog:Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

    new-instance v5, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

    const-string v7, "PopupWindows"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;->PopupWindows:Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

    .line 282
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;->$VALUES:[Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 286
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 282
    const-class v0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;
    .locals 1

    .line 282
    sget-object v0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;->$VALUES:[Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

    return-object v0
.end method
