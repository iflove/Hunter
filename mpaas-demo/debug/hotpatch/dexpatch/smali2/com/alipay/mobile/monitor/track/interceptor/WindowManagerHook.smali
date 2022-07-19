.class public Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;
.super Ljava/lang/Object;
.source "WindowManagerHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;,
        Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowComparator;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;

.field public static comparator:Ljava/util/Comparator;


# instance fields
.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/reflect/Field;

.field private e:Ljava/lang/reflect/Field;

.field private f:Ljava/lang/Object;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->a:Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;

    .line 20
    new-instance v0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowComparator;

    invoke-direct {v0}, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowComparator;-><init>()V

    sput-object v0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->g:I

    .line 31
    invoke-virtual {p0}, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->perpare()V

    .line 32
    return-void
.end method

.method public static getMainWindowDesc()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "MainWindow"

    return-object v0
.end method

.method public static getManager()Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;
    .locals 3

    .line 41
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->a:Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;

    invoke-direct {v0}, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;-><init>()V

    sput-object v0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->a:Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "WindowManagerHook"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    sget-object v0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->a:Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;

    return-object v0
.end method


# virtual methods
.method getViewsField(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "paramClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 52
    :try_start_0
    const-string/jumbo v0, "mViews"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 53
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    return-object v0

    .line 55
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "WindowManagerHook"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method getViewsFromWindowManger()[Landroid/view/View;
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->f:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->e:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 66
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->d:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 69
    .local v0, "object":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/View;

    check-cast v1, [Landroid/view/View;

    return-object v1

    .line 71
    .end local v0    # "object":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->d:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    check-cast v0, [Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .local v0, "views":[Landroid/view/View;
    return-object v0

    .line 76
    .end local v0    # "views":[Landroid/view/View;
    :catchall_0
    move-exception v0

    .line 78
    .local v0, "localException":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "WindowManagerHook"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .end local v0    # "localException":Ljava/lang/Throwable;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getWindowManager()Ljava/lang/Object;
    .locals 4

    .line 86
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .local v0, "localObject":Ljava/lang/Object;
    return-object v0

    .line 88
    .end local v0    # "localObject":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "localIllegalAccessException":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "WindowManagerHook"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .end local v1    # "localIllegalAccessException":Ljava/lang/IllegalAccessException;
    return-object v0
.end method

.method getWindowManagerField(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 4
    .param p1, "paramClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 98
    const-string/jumbo v0, "sDefaultWindowManager"

    .local v0, "str":Ljava/lang/String;
    goto :goto_0

    .line 99
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_1

    .line 100
    const-string/jumbo v0, "sWindowManager"

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 102
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "mWindowManager"

    .line 106
    .restart local v0    # "str":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 107
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    return-object v1

    .line 109
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "WindowManagerHook"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .end local v1    # "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method getWindowManagerImplClass()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "WindowManagerHook"

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 120
    :try_start_0
    const-string v0, "android.view.WindowManagerGlobal"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .local v0, "localObject":Ljava/lang/Class;
    return-object v0

    .line 122
    .end local v0    # "localObject":Ljava/lang/Class;
    :catchall_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 127
    :cond_0
    :try_start_1
    const-string v0, "android.view.WindowManagerImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    .local v0, "localObject":Ljava/lang/Class;
    return-object v0

    .line 129
    .end local v0    # "localObject":Ljava/lang/Class;
    :catchall_1
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindowType(Landroid/view/View;)Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;
    .locals 3
    .param p1, "paramView"    # Landroid/view/View;

    .line 137
    if-nez p1, :cond_0

    .line 138
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "WindowManagerHook"

    const-string v2, "getWindowType paramView is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 142
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 144
    .local v0, "view":Ljava/lang/Class;
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->b:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 145
    sget-object v1, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;->DecorView:Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

    return-object v1

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->c:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 148
    sget-object v1, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;->PopupWindows:Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

    return-object v1

    .line 151
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 152
    sget-object v1, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;->Activity:Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

    return-object v1

    .line 155
    :cond_3
    sget-object v1, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;->Dialog:Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

    return-object v1
.end method

.method public getWindowViewWithSort()[Landroid/view/View;
    .locals 4

    .line 160
    invoke-virtual {p0}, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->getWindowViews()[Landroid/view/View;

    move-result-object v0

    .line 161
    .local v0, "arrayOfView2":[Landroid/view/View;
    move-object v1, v0

    .line 162
    .local v1, "arrayOfView1":[Landroid/view/View;
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 164
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/View;

    move-object v1, v2

    check-cast v1, [Landroid/view/View;

    .line 165
    sget-object v2, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->comparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 167
    :cond_0
    return-object v1
.end method

.method public getWindowViews()[Landroid/view/View;
    .locals 3

    .line 194
    iget v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->f:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->getWindowManager()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->f:Ljava/lang/Object;

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->getViewsFromWindowManger()[Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 201
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "WindowManagerHook"

    const-string v2, "getWindowViews failure - NOT READY !"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method initTypeClass()Z
    .locals 7

    .line 207
    const-string v0, "WindowManagerHook"

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "com.android.internal.policy.PhoneWindow$DecorView"

    .line 208
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->b:Ljava/lang/Class;

    .line 209
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "type = PhoneWindow$DecorView"

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    return v1

    .line 211
    :catchall_0
    move-exception v2

    .line 214
    .local v2, "e1":Ljava/lang/Throwable;
    :try_start_1
    const-string v3, "android.widget.PopupWindow$PopupDecorView"

    .line 215
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->c:Ljava/lang/Class;

    .line 216
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "type = PopupWindow$PopupDecorView"

    invoke-interface {v3, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 217
    return v1

    .line 218
    :catchall_1
    move-exception v3

    .line 220
    .local v3, "e2":Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "android.widget.PopupWindow$PopupViewContainer"

    .line 221
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->c:Ljava/lang/Class;

    .line 222
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "type = PopupWindow$PopupViewContainer"

    invoke-interface {v4, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 223
    return v1

    .line 224
    :catchall_2
    move-exception v4

    .line 226
    .local v4, "e3":Ljava/lang/Throwable;
    :try_start_3
    const-string v5, "com.android.internal.policy.impl.PhoneWindow$DecorView"

    .line 227
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->b:Ljava/lang/Class;

    .line 228
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "type = impl.PhoneWindow$DecorView"

    invoke-interface {v5, v0, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 229
    return v1

    .line 230
    :catchall_3
    move-exception v1

    .line 231
    .local v1, "e4":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-interface {v5, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public isAddDialog()Z
    .locals 5

    .line 174
    iget v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->g:I

    const-string v1, "isWindowsViewChange not avaiable"

    const-string v2, "WindowManagerHook"

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    .line 175
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return v3

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->getWindowViews()[Landroid/view/View;

    move-result-object v0

    .line 179
    .local v0, "views":[Landroid/view/View;
    if-nez v0, :cond_1

    .line 180
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return v3

    .line 183
    :cond_1
    array-length v1, v0

    .line 184
    .local v1, "currentSize":I
    add-int/lit8 v2, v1, -0x1

    aget-object v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->getWindowType(Landroid/view/View;)Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

    move-result-object v2

    .line 185
    .local v2, "type":Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;
    if-eqz v2, :cond_2

    sget-object v4, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;->Activity:Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook$WindowType;

    if-eq v2, v4, :cond_2

    .line 186
    const/4 v3, 0x1

    return v3

    .line 188
    :cond_2
    return v3
.end method

.method public isSuccess()Z
    .locals 2

    .line 241
    iget v0, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public perpare()V
    .locals 5

    .line 245
    invoke-virtual {p0}, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->getWindowManagerImplClass()Ljava/lang/Class;

    move-result-object v0

    .line 246
    .local v0, "localClass":Ljava/lang/Class;
    const-string v1, "load class failure"

    const/4 v2, 0x1

    const-string v3, "WindowManagerHook"

    if-nez v0, :cond_0

    .line 247
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iput v2, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->g:I

    .line 249
    return-void

    .line 251
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->getWindowManagerField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->e:Ljava/lang/reflect/Field;

    .line 252
    if-nez v0, :cond_1

    .line 253
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iput v2, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->g:I

    .line 255
    return-void

    .line 257
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->getViewsField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->d:Ljava/lang/reflect/Field;

    .line 258
    if-nez v1, :cond_2

    .line 259
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v4, "mViews field found failure!"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iput v2, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->g:I

    .line 262
    return-void

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->initTypeClass()Z

    move-result v1

    if-nez v1, :cond_3

    .line 265
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v4, "found type class failure!"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iput v2, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->g:I

    .line 267
    return-void

    .line 269
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->getWindowManager()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->f:Ljava/lang/Object;

    .line 270
    const/4 v1, 0x2

    iput v1, p0, Lcom/alipay/mobile/monitor/track/interceptor/WindowManagerHook;->g:I

    .line 271
    return-void
.end method
