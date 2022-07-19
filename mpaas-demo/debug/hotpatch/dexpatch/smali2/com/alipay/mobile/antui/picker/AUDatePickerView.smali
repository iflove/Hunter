.class public Lcom/alipay/mobile/antui/picker/AUDatePickerView;
.super Lcom/alipay/mobile/antui/basic/AURelativeLayout;
.source "AUDatePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/picker/AUDatePickerView$OnDatePickListener;
    }
.end annotation


# static fields
.field public static final COMPARE_MODE_ALL:I

.field public static final COMPARE_MODE_EQUAL:I

.field public static final COMPARE_MODE_MAX:I

.field public static final COMPARE_MODE_MIN:I

.field public static final MONTH_DAY:I

.field public static final YEAR_MONTH:I

.field public static final YEAR_MONTH_DAY:I


# instance fields
.field private dayLabel:Ljava/lang/String;

.field private dayView:Lcom/alipay/mobile/antui/picker/AUWheelView;

.field private days:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hourView:Lcom/alipay/mobile/antui/picker/AUWheelView;

.field private hours:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isAuto:Z

.field private lastDatePickerValue:Ljava/lang/String;

.field protected lineColor:I

.field protected lineVisible:Z

.field private mContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

.field private final maxDay:I

.field private final maxHour:I

.field private final maxMinute:I

.field private final maxMonth:I

.field private final maxYear:I

.field private final minDay:I

.field private final minHour:I

.field private final minMinute:I

.field private final minMonth:I

.field private final minYear:I

.field private minuteView:Lcom/alipay/mobile/antui/picker/AUWheelView;

.field private minutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private monthLabel:Ljava/lang/String;

.field private monthView:Lcom/alipay/mobile/antui/picker/AUWheelView;

.field private months:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected offset:I

.field private onDatePickListener:Lcom/alipay/mobile/antui/picker/AUDatePickerView$OnDatePickListener;

.field private final selectedDate:Ljava/util/Calendar;

.field private selectedDayIndex:I

.field private selectedHourIndex:I

.field private selectedMinuteIndex:I

.field private selectedMonthIndex:I

.field private selectedYearIndex:I

.field protected textColorFocus:I

.field protected textColorNormal:I

.field protected textSize:I

.field private yearLabel:Ljava/lang/String;

.field private yearView:Lcom/alipay/mobile/antui/picker/AUWheelView;

.field private years:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const-string v0, "11100"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->YEAR_MONTH_DAY:I

    .line 32
    const-string v0, "11000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->YEAR_MONTH:I

    .line 36
    const-string v0, "01100"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->MONTH_DAY:I

    .line 38
    const-string v0, "111"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->COMPARE_MODE_ALL:I

    .line 39
    const-string v0, "100"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->COMPARE_MODE_EQUAL:I

    .line 40
    const-string v0, "010"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->COMPARE_MODE_MIN:I

    .line 41
    const-string v0, "001"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->COMPARE_MODE_MAX:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 101
    sget v5, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->YEAR_MONTH_DAY:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;-><init>(Landroid/app/Activity;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;I)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "minDate"    # Ljava/util/Calendar;
    .param p3, "maxDate"    # Ljava/util/Calendar;
    .param p4, "selectedDate"    # Ljava/util/Calendar;
    .param p5, "mode"    # I

    .line 116
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->years:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->months:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->days:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->hours:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minutes:Ljava/util/ArrayList;

    .line 60
    const-string/jumbo v0, "\u5e74"

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->yearLabel:Ljava/lang/String;

    const-string/jumbo v0, "\u6708"

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->monthLabel:Ljava/lang/String;

    const-string/jumbo v0, "\u65e5"

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->dayLabel:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedYearIndex:I

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedMonthIndex:I

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedDayIndex:I

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedHourIndex:I

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedMinuteIndex:I

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->isAuto:Z

    .line 67
    const/16 v2, 0x10

    iput v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->textSize:I

    .line 71
    const v2, -0x444445

    iput v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->textColorNormal:I

    .line 75
    const v2, -0xfd7732

    iput v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->textColorFocus:I

    .line 79
    const v2, -0x7c321a

    iput v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->lineColor:I

    .line 83
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->lineVisible:Z

    .line 87
    iput v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->offset:I

    .line 117
    if-nez p4, :cond_0

    .line 118
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p4

    .line 120
    :cond_0
    if-nez p2, :cond_1

    .line 121
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 122
    move-object p2, v2

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Calendar;->set(III)V

    .line 124
    :cond_1
    const/16 v0, 0xb

    if-nez p3, :cond_2

    .line 125
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 126
    move-object p3, v2

    const/16 v3, 0x7ee

    const/16 v4, 0x1f

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/Calendar;->set(III)V

    .line 128
    :cond_2
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    .line 129
    move-object v2, p3

    .line 130
    .local v2, "temp":Ljava/util/Calendar;
    move-object p3, p2

    .line 131
    move-object p2, v2

    .line 133
    .end local v2    # "temp":Ljava/util/Calendar;
    :cond_3
    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_4

    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_5

    .line 134
    :cond_4
    move-object p4, p2

    .line 136
    :cond_5
    iput-object p4, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedDate:Ljava/util/Calendar;

    .line 137
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minYear:I

    .line 138
    invoke-virtual {p3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->maxYear:I

    .line 139
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    iput v3, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minMonth:I

    .line 140
    invoke-virtual {p3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->maxMonth:I

    .line 141
    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minDay:I

    .line 142
    invoke-virtual {p3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->maxDay:I

    .line 143
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minHour:I

    .line 144
    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->maxHour:I

    .line 145
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minMinute:I

    .line 146
    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->maxMinute:I

    .line 147
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/antui/R$layout;->au_date_picker_view:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 148
    sget v0, Lcom/alipay/mobile/antui/R$id;->container:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->mContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    .line 149
    invoke-virtual {p0, v0, p5}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->makeCenterView(Landroid/view/View;I)Landroid/view/View;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/picker/AUDatePickerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUDatePickerView;
    .param p1, "x1"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->checkIntStringVaild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/antui/picker/AUDatePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUDatePickerView;
    .param p1, "x1"    # I

    .line 24
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedYearIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/alipay/mobile/antui/picker/AUDatePickerView;ZZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUDatePickerView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->handleChangeByMinMaxDate(ZZZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/antui/picker/AUDatePickerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUDatePickerView;

    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->onDatePickChange()V

    return-void
.end method

.method static synthetic access$402(Lcom/alipay/mobile/antui/picker/AUDatePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUDatePickerView;
    .param p1, "x1"    # I

    .line 24
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedMonthIndex:I

    return p1
.end method

.method static synthetic access$502(Lcom/alipay/mobile/antui/picker/AUDatePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUDatePickerView;
    .param p1, "x1"    # I

    .line 24
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedDayIndex:I

    return p1
.end method

.method static synthetic access$602(Lcom/alipay/mobile/antui/picker/AUDatePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUDatePickerView;
    .param p1, "x1"    # I

    .line 24
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedHourIndex:I

    return p1
.end method

.method static synthetic access$702(Lcom/alipay/mobile/antui/picker/AUDatePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUDatePickerView;
    .param p1, "x1"    # I

    .line 24
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedMinuteIndex:I

    return p1
.end method

.method private changeByMinMaxDate(Ljava/util/ArrayList;IIILcom/alipay/mobile/antui/picker/AUWheelView;)I
    .locals 2
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "currValue"    # I
    .param p3, "minValue"    # I
    .param p4, "maxValue"    # I
    .param p5, "wheelView"    # Lcom/alipay/mobile/antui/picker/AUWheelView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;III",
            "Lcom/alipay/mobile/antui/picker/AUWheelView;",
            ")I"
        }
    .end annotation

    .line 374
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 375
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-gt v0, p4, :cond_0

    .line 376
    invoke-static {v0}, Lcom/alipay/mobile/antui/utils/DateUtils;->fillZero(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->findItemIndex(Ljava/util/ArrayList;I)I

    move-result v0

    .line 379
    .local v0, "index":I
    invoke-virtual {p5, p1, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setItems(Ljava/util/List;I)V

    .line 380
    return v0
.end method

.method private changeDaysByMinMaxDate(IIIZZZI)I
    .locals 8
    .param p1, "day"    # I
    .param p2, "minDay"    # I
    .param p3, "maxDay"    # I
    .param p4, "needDay"    # Z
    .param p5, "needHour"    # Z
    .param p6, "needMinute"    # Z
    .param p7, "compareMode"    # I

    .line 356
    if-eqz p4, :cond_0

    .line 357
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->days:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->dayView:Lcom/alipay/mobile/antui/picker/AUWheelView;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->changeByMinMaxDate(Ljava/util/ArrayList;IIILcom/alipay/mobile/antui/picker/AUWheelView;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedDayIndex:I

    .line 358
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->getSelectedDay()I

    move-result p1

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->getSelectedHour()I

    move-result v7

    .line 361
    .local v7, "hour":I
    sget v0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->COMPARE_MODE_EQUAL:I

    and-int/2addr v0, p7

    if-lez v0, :cond_1

    if-ne p2, p1, :cond_1

    if-ne p2, p3, :cond_1

    .line 362
    iget v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minHour:I

    iget v3, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->maxHour:I

    sget v6, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->COMPARE_MODE_ALL:I

    move-object v0, p0

    move v1, v7

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->changeHoursByMinMaxDate(IIIZZI)I

    goto :goto_0

    .line 363
    :cond_1
    sget v6, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->COMPARE_MODE_MIN:I

    and-int v0, p7, v6

    if-lez v0, :cond_2

    if-ne p2, p1, :cond_2

    .line 364
    iget v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minHour:I

    const/16 v3, 0x17

    move-object v0, p0

    move v1, v7

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->changeHoursByMinMaxDate(IIIZZI)I

    goto :goto_0

    .line 365
    :cond_2
    sget v6, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->COMPARE_MODE_MAX:I

    and-int v0, p7, v6

    if-lez v0, :cond_3

    if-ne p3, p1, :cond_3

    .line 366
    const/4 v2, 0x0

    iget v3, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->maxHour:I

    move-object v0, p0

    move v1, v7

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->changeHoursByMinMaxDate(IIIZZI)I

    goto :goto_0

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->hours:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->hours:Ljava/util/ArrayList;

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedHourIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->hourView:Lcom/alipay/mobile/antui/picker/AUWheelView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->getSelectedItem()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 368
    :cond_4
    const/4 v2, 0x0

    const/16 v3, 0x17

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, v7

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->changeHoursByMinMaxDate(IIIZZI)I

    .line 370
    :cond_5
    :goto_0
    return p1
.end method

.method private changeDaysViewByYearMonth()V
    .locals 8

    .line 433
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->getSelectedDay()I

    move-result v1

    .line 434
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->getSelectedYear()I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->getSelectedMonth()I

    move-result v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/utils/DateUtils;->calculateDaysInMonth(II)I

    move-result v3

    .line 433
    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->changeDaysByMinMaxDate(IIIZZZI)I

    .line 435
    return-void
.end method

.method private changeHoursByMinMaxDate(IIIZZI)I
    .locals 6
    .param p1, "hour"    # I
    .param p2, "minHour"    # I
    .param p3, "maxHour"    # I
    .param p4, "needHour"    # Z
    .param p5, "needMinute"    # Z
    .param p6, "compareMode"    # I

    .line 317
    if-eqz p4, :cond_0

    .line 318
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->hours:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->hourView:Lcom/alipay/mobile/antui/picker/AUWheelView;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->changeByMinMaxDate(Ljava/util/ArrayList;IIILcom/alipay/mobile/antui/picker/AUWheelView;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedHourIndex:I

    .line 319
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->getSelectedHour()I

    move-result p1

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->getSelectedMinute()I

    move-result v0

    .line 322
    .local v0, "minute":I
    sget v1, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->COMPARE_MODE_EQUAL:I

    and-int/2addr v1, p6

    if-lez v1, :cond_1

    if-ne p2, p1, :cond_1

    if-ne p2, p3, :cond_1

    .line 323
    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minMinute:I

    iget v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->maxMinute:I

    invoke-direct {p0, v0, v1, v2, p5}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->changeMinutesByMinMaxDate(IIIZ)I

    goto :goto_0

    .line 324
    :cond_1
    sget v1, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->COMPARE_MODE_MIN:I

    and-int/2addr v1, p6

    const/16 v2, 0x3b

    if-lez v1, :cond_2

    if-ne p2, p1, :cond_2

    .line 325
    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minMinute:I

    invoke-direct {p0, v0, v1, v2, p5}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->changeMinutesByMinMaxDate(IIIZ)I

    goto :goto_0

    .line 326
    :cond_2
    sget v1, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->COMPARE_MODE_MAX:I

    and-int/2addr v1, p6

    const/4 v3, 0x0

    if-lez v1, :cond_3

    if-ne p3, p1, :cond_3

    .line 327
    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->maxMinute:I

    invoke-direct {p0, v0, v3, v1, p5}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->changeMinutesByMinMaxDate(IIIZ)I

    goto :goto_0

    .line 328
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v4, 0x3c

    if-lt v1, v4, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minutes:Ljava/util/ArrayList;

    iget v4, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedMinuteIndex:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minuteView:Lcom/alipay/mobile/antui/picker/AUWheelView;

    invoke-virtual {v4}, Lcom/alipay/mobile/antui/picker/AUWheelView;->getSelectedItem()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 329
    :cond_4
    const/4 v1, 0x1

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->changeMinutesByMinMaxDate(IIIZ)I

    .line 331
    :cond_5
    :goto_0
    return v0
.end method

.method private changeMinutesByMinMaxDate(IIIZ)I
    .locals 6
    .param p1, "minute"    # I
    .param p2, "minMinute"    # I
    .param p3, "maxMinute"    # I
    .param p4, "needMinute"    # Z

    .line 308
    if-eqz p4, :cond_0

    .line 309
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minutes:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minuteView:Lcom/alipay/mobile/antui/picker/AUWheelView;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->changeByMinMaxDate(Ljava/util/ArrayList;IIILcom/alipay/mobile/antui/picker/AUWheelView;)I

    move-result v0

    .line 310
    .local v0, "index":I
    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedMinuteIndex:I

    .line 311
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->getSelectedMinute()I

    move-result p1

    .line 313
    .end local v0    # "index":I
    :cond_0
    return p1
.end method

.method private changeMonthsByMinMaxDate(IIIZZZZI)I
    .locals 15
    .param p1, "month"    # I
    .param p2, "minMonth"    # I
    .param p3, "maxMonth"    # I
    .param p4, "needMonth"    # Z
    .param p5, "needDay"    # Z
    .param p6, "needHour"    # Z
    .param p7, "needMinute"    # Z
    .param p8, "compareMode"    # I

    .line 335
    move-object v8, p0

    move/from16 v9, p2

    move/from16 v10, p3

    if-eqz p4, :cond_0

    .line 336
    iget-object v1, v8, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->months:Ljava/util/ArrayList;

    iget-object v5, v8, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->monthView:Lcom/alipay/mobile/antui/picker/AUWheelView;

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->changeByMinMaxDate(Ljava/util/ArrayList;IIILcom/alipay/mobile/antui/picker/AUWheelView;)I

    move-result v0

    iput v0, v8, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedMonthIndex:I

    .line 337
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->getSelectedMonth()I

    move-result v0

    move v11, v0

    .end local p1    # "month":I
    .local v0, "month":I
    goto :goto_0

    .line 335
    .end local v0    # "month":I
    .restart local p1    # "month":I
    :cond_0
    move/from16 v11, p1

    .line 339
    .end local p1    # "month":I
    .local v11, "month":I
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->getSelectedYear()I

    move-result v12

    .line 340
    .local v12, "year":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->getSelectedDay()I

    move-result v13

    .line 341
    .local v13, "day":I
    invoke-static {v12, v11}, Lcom/alipay/mobile/antui/utils/DateUtils;->calculateDaysInMonth(II)I

    move-result v14

    .line 342
    .local v14, "defaultMaxDay":I
    sget v0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->COMPARE_MODE_EQUAL:I

    and-int v0, p8, v0

    if-lez v0, :cond_1

    if-ne v9, v11, :cond_1

    if-ne v9, v10, :cond_1

    .line 343
    iget v2, v8, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minDay:I

    iget v3, v8, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->maxDay:I

    sget v7, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->COMPARE_MODE_ALL:I

    move-object v0, p0

    move v1, v13

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->changeDaysByMinMaxDate(IIIZZZI)I

    goto/16 :goto_1

    .line 344
    :cond_1
    sget v7, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->COMPARE_MODE_MIN:I

    and-int v0, p8, v7

    if-lez v0, :cond_2

    if-ne v9, v11, :cond_2

    .line 345
    iget v2, v8, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minDay:I

    move-object v0, p0

    move v1, v13

    move v3, v14

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->changeDaysByMinMaxDate(IIIZZZI)I

    goto :goto_1

    .line 346
    :cond_2
    sget v7, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->COMPARE_MODE_MAX:I

    and-int v0, p8, v7

    if-lez v0, :cond_3

    if-ne v10, v11, :cond_3

    .line 347
    const/4 v2, 0x1

    iget v3, v8, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->maxDay:I

    move-object v0, p0

    move v1, v13

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->changeDaysByMinMaxDate(IIIZZZI)I

    goto :goto_1

    .line 348
    :cond_3
    iget-object v0, v8, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->days:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v14, :cond_4

    .line 349
    invoke-static {v14}, Lcom/alipay/mobile/antui/utils/DateUtils;->fillZero(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->days:Ljava/util/ArrayList;

    add-int/lit8 v2, v14, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v8, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->days:Ljava/util/ArrayList;

    iget v1, v8, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedDayIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, v8, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->dayView:Lcom/alipay/mobile/antui/picker/AUWheelView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->getSelectedItem()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 350
    :cond_4
    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, v13

    move v3, v14

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->changeDaysByMinMaxDate(IIIZZZI)I

    .line 352
    :cond_5
    :goto_1
    return v11
.end method

.method private checkIntStringVaild(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "lhsStr"    # Ljava/lang/String;

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-string p1, "0"

    .line 203
    :cond_0
    return-object p1
.end method

.method private findItemIndex(Ljava/util/ArrayList;I)I
    .locals 2
    .param p1, "items"    # Ljava/util/ArrayList;
    .param p2, "item"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .line 182
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/antui/picker/AUDatePickerView$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView$1;-><init>(Lcom/alipay/mobile/antui/picker/AUDatePickerView;)V

    invoke-static {p1, v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    const/4 v1, 0x0

    .line 192
    .local v1, "index":I
    move v1, v0

    if-gez v0, :cond_0

    .line 193
    const/4 v1, 0x0

    .line 195
    :cond_0
    return v1
.end method

.method private getDatePickerValue(IIIII)Ljava/lang/String;
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleChangeByMinMaxDate(ZZZZ)V
    .locals 11
    .param p1, "needMonth"    # Z
    .param p2, "needDay"    # Z
    .param p3, "needHour"    # Z
    .param p4, "needMinute"    # Z

    .line 289
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->getSelectedYear()I

    move-result v0

    .line 290
    .local v0, "year":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->getSelectedMonth()I

    move-result v10

    .line 291
    .local v10, "month":I
    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minYear:I

    if-ne v1, v0, :cond_0

    iget v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->maxYear:I

    if-ne v1, v2, :cond_0

    .line 292
    iget v3, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minMonth:I

    iget v4, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->maxMonth:I

    sget v9, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->COMPARE_MODE_ALL:I

    move-object v1, p0

    move v2, v10

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->changeMonthsByMinMaxDate(IIIZZZZI)I

    return-void

    .line 293
    :cond_0
    if-ne v1, v0, :cond_1

    .line 294
    iget v3, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minMonth:I

    const/16 v4, 0xc

    sget v9, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->COMPARE_MODE_MIN:I

    move-object v1, p0

    move v2, v10

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->changeMonthsByMinMaxDate(IIIZZZZI)I

    return-void

    .line 295
    :cond_1
    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->maxYear:I

    if-ne v1, v0, :cond_2

    .line 296
    const/4 v3, 0x1

    iget v4, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->maxMonth:I

    sget v9, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->COMPARE_MODE_MAX:I

    move-object v1, p0

    move v2, v10

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->changeMonthsByMinMaxDate(IIIZZZZI)I

    return-void

    .line 297
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->months:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xc

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->months:Ljava/util/ArrayList;

    iget v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedMonthIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->monthView:Lcom/alipay/mobile/antui/picker/AUWheelView;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/picker/AUWheelView;->getSelectedItem()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    if-eqz p1, :cond_4

    .line 298
    invoke-direct {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->initMonths()V

    .line 299
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->months:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v10}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->findItemIndex(Ljava/util/ArrayList;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedMonthIndex:I

    .line 300
    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->monthView:Lcom/alipay/mobile/antui/picker/AUWheelView;

    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->months:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setItems(Ljava/util/List;I)V

    .line 301
    invoke-direct {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->changeDaysViewByYearMonth()V

    return-void

    .line 302
    :cond_4
    if-eqz p1, :cond_5

    .line 303
    invoke-direct {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->changeDaysViewByYearMonth()V

    .line 305
    :cond_5
    return-void
.end method

.method private initMonths()V
    .locals 3

    .line 384
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->months:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 385
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-gt v0, v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->months:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/alipay/mobile/antui/utils/DateUtils;->fillZero(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private initWheelView(ILjava/util/ArrayList;IZ)Lcom/alipay/mobile/antui/picker/AUWheelView;
    .locals 3
    .param p1, "viewId"    # I
    .param p2, "items"    # Ljava/util/ArrayList;
    .param p3, "index"    # I
    .param p4, "show"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;IZ)",
            "Lcom/alipay/mobile/antui/picker/AUWheelView;"
        }
    .end annotation

    .line 446
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/picker/AUWheelView;

    const/4 v1, 0x0

    .line 447
    .local v1, "wheelView":Lcom/alipay/mobile/antui/picker/AUWheelView;
    move-object v1, v0

    iget v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->textSize:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setTextSize(I)V

    .line 448
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->lineVisible:Z

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setLineVisible(Z)V

    .line 449
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->offset:I

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setOffset(I)V

    .line 450
    if-eqz p2, :cond_1

    .line 451
    if-nez p3, :cond_0

    .line 452
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setItems(Ljava/util/List;)V

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {v1, p2, p3}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setItems(Ljava/util/List;I)V

    .line 457
    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 458
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setVisibility(I)V

    goto :goto_1

    .line 460
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setVisibility(I)V

    .line 462
    :goto_1
    return-object v1
.end method

.method private onDatePickChange()V
    .locals 12

    .line 391
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->onDatePickListener:Lcom/alipay/mobile/antui/picker/AUDatePickerView$OnDatePickListener;

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->getSelectedYear()I

    move-result v0

    .line 393
    .local v0, "year":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->getSelectedMonth()I

    move-result v7

    .line 394
    .local v7, "month":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->getSelectedDay()I

    move-result v8

    .line 395
    .local v8, "day":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->getSelectedHour()I

    move-result v9

    .line 396
    .local v9, "hour":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->getSelectedMinute()I

    move-result v10

    .line 397
    .local v10, "minute":I
    move-object v1, p0

    move v2, v0

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->getDatePickerValue(IIIII)Ljava/lang/String;

    move-result-object v11

    .line 398
    .local v11, "datePickerValue":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->getDatePickerValue(IIIII)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->lastDatePickerValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    return-void

    .line 401
    :cond_0
    iput-object v11, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->lastDatePickerValue:Ljava/lang/String;

    .line 403
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->onDatePickListener:Lcom/alipay/mobile/antui/picker/AUDatePickerView$OnDatePickListener;

    move v2, v0

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/antui/picker/AUDatePickerView$OnDatePickListener;->onPickerChange(IIIII)V

    .line 405
    .end local v0    # "year":I
    .end local v7    # "month":I
    .end local v8    # "day":I
    .end local v9    # "hour":I
    .end local v10    # "minute":I
    .end local v11    # "datePickerValue":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setDefaultDate()V
    .locals 13

    .line 167
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->isAuto:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->years:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->findItemIndex(Ljava/util/ArrayList;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedYearIndex:I

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->months:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedDate:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->findItemIndex(Ljava/util/ArrayList;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedMonthIndex:I

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->days:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->findItemIndex(Ljava/util/ArrayList;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedDayIndex:I

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->hours:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedDate:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->findItemIndex(Ljava/util/ArrayList;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedHourIndex:I

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minutes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedDate:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->findItemIndex(Ljava/util/ArrayList;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedMinuteIndex:I

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedDate:Ljava/util/Calendar;

    .line 174
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v9, v0, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedDate:Ljava/util/Calendar;

    .line 175
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v11

    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedDate:Ljava/util/Calendar;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 173
    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->getDatePickerValue(IIIII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->lastDatePickerValue:Ljava/lang/String;

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->isAuto:Z

    .line 178
    :cond_0
    return-void
.end method

.method private stringToYearMonthDay(Ljava/lang/String;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 438
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 442
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getSelectedDay()I
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->days:Ljava/util/ArrayList;

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedDayIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->stringToYearMonthDay(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSelectedHour()I
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->hours:Ljava/util/ArrayList;

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedHourIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->stringToYearMonthDay(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSelectedMinute()I
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minutes:Ljava/util/ArrayList;

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedMinuteIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->stringToYearMonthDay(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSelectedMonth()I
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->months:Ljava/util/ArrayList;

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedMonthIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->stringToYearMonthDay(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSelectedYear()I
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->years:Ljava/util/ArrayList;

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedYearIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->stringToYearMonthDay(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected makeCenterView(Landroid/view/View;I)Landroid/view/View;
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # I

    .line 226
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minYear:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->maxYear:I

    if-gt v0, v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->years:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->initMonths()V

    .line 230
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_1
    const/16 v1, 0x1f

    if-gt v0, v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->days:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/alipay/mobile/antui/utils/DateUtils;->fillZero(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    const/16 v1, 0x17

    if-gt v0, v1, :cond_2

    .line 234
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->hours:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/alipay/mobile/antui/utils/DateUtils;->fillZero(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 236
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    const/16 v1, 0x3b

    if-gt v0, v1, :cond_3

    .line 237
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minutes:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/alipay/mobile/antui/utils/DateUtils;->fillZero(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 239
    .end local v0    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->setDefaultDate()V

    .line 240
    sget v0, Lcom/alipay/mobile/antui/R$id;->years:I

    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->years:Ljava/util/ArrayList;

    iget v2, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->selectedYearIndex:I

    const-string v3, "10000"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    and-int/2addr v3, p2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->initWheelView(ILjava/util/ArrayList;IZ)Lcom/alipay/mobile/antui/picker/AUWheelView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->yearView:Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 241
    sget v0, Lcom/alipay/mobile/antui/R$id;->month:I

    const-string v1, "01000"

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    and-int/2addr v1, p2

    if-lez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v5, v1}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->initWheelView(ILjava/util/ArrayList;IZ)Lcom/alipay/mobile/antui/picker/AUWheelView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->monthView:Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 242
    sget v0, Lcom/alipay/mobile/antui/R$id;->days:I

    const-string v1, "00100"

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    and-int/2addr v1, p2

    if-lez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    invoke-direct {p0, v0, v2, v5, v1}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->initWheelView(ILjava/util/ArrayList;IZ)Lcom/alipay/mobile/antui/picker/AUWheelView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->dayView:Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 243
    sget v0, Lcom/alipay/mobile/antui/R$id;->hours:I

    const-string v1, "00010"

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    and-int/2addr v1, p2

    if-lez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    invoke-direct {p0, v0, v2, v5, v1}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->initWheelView(ILjava/util/ArrayList;IZ)Lcom/alipay/mobile/antui/picker/AUWheelView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->hourView:Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 244
    sget v0, Lcom/alipay/mobile/antui/R$id;->minutes:I

    const-string v1, "00001"

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    and-int/2addr v1, p2

    if-lez v1, :cond_8

    goto :goto_8

    :cond_8
    const/4 v6, 0x0

    :goto_8
    invoke-direct {p0, v0, v2, v5, v6}, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->initWheelView(ILjava/util/ArrayList;IZ)Lcom/alipay/mobile/antui/picker/AUWheelView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minuteView:Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->yearView:Lcom/alipay/mobile/antui/picker/AUWheelView;

    new-instance v1, Lcom/alipay/mobile/antui/picker/AUDatePickerView$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView$2;-><init>(Lcom/alipay/mobile/antui/picker/AUDatePickerView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setOnWheelViewListener(Lcom/alipay/mobile/antui/picker/AUWheelView$OnWheelViewListener;)V

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->monthView:Lcom/alipay/mobile/antui/picker/AUWheelView;

    new-instance v1, Lcom/alipay/mobile/antui/picker/AUDatePickerView$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView$3;-><init>(Lcom/alipay/mobile/antui/picker/AUDatePickerView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setOnWheelViewListener(Lcom/alipay/mobile/antui/picker/AUWheelView$OnWheelViewListener;)V

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->dayView:Lcom/alipay/mobile/antui/picker/AUWheelView;

    new-instance v1, Lcom/alipay/mobile/antui/picker/AUDatePickerView$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView$4;-><init>(Lcom/alipay/mobile/antui/picker/AUDatePickerView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setOnWheelViewListener(Lcom/alipay/mobile/antui/picker/AUWheelView$OnWheelViewListener;)V

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->hourView:Lcom/alipay/mobile/antui/picker/AUWheelView;

    new-instance v1, Lcom/alipay/mobile/antui/picker/AUDatePickerView$5;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView$5;-><init>(Lcom/alipay/mobile/antui/picker/AUDatePickerView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setOnWheelViewListener(Lcom/alipay/mobile/antui/picker/AUWheelView$OnWheelViewListener;)V

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->minuteView:Lcom/alipay/mobile/antui/picker/AUWheelView;

    new-instance v1, Lcom/alipay/mobile/antui/picker/AUDatePickerView$6;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/picker/AUDatePickerView$6;-><init>(Lcom/alipay/mobile/antui/picker/AUDatePickerView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->setOnWheelViewListener(Lcom/alipay/mobile/antui/picker/AUWheelView$OnWheelViewListener;)V

    .line 285
    return-object p1
.end method

.method public setLabel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "yearLabel"    # Ljava/lang/String;
    .param p2, "monthLabel"    # Ljava/lang/String;
    .param p3, "dayLabel"    # Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->yearLabel:Ljava/lang/String;

    .line 161
    iput-object p2, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->monthLabel:Ljava/lang/String;

    .line 162
    iput-object p3, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->dayLabel:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setLineColor(I)V
    .locals 0
    .param p1, "lineColor"    # I

    .line 510
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->lineColor:I

    .line 511
    return-void
.end method

.method public setLineVisible(Z)V
    .locals 0
    .param p1, "lineVisible"    # Z

    .line 501
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->lineVisible:Z

    .line 502
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 519
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->offset:I

    .line 520
    return-void
.end method

.method public setOnDatePickListener(Lcom/alipay/mobile/antui/picker/AUDatePickerView$OnDatePickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/antui/picker/AUDatePickerView$OnDatePickListener;

    .line 213
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->onDatePickListener:Lcom/alipay/mobile/antui/picker/AUDatePickerView$OnDatePickListener;

    .line 214
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .line 492
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->textColorFocus:I

    .line 493
    return-void
.end method

.method public setTextColor(II)V
    .locals 0
    .param p1, "textColorFocus"    # I
    .param p2, "textColorNormal"    # I

    .line 482
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->textColorFocus:I

    .line 483
    iput p2, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->textColorNormal:I

    .line 484
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .line 472
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUDatePickerView;->textSize:I

    .line 473
    return-void
.end method
