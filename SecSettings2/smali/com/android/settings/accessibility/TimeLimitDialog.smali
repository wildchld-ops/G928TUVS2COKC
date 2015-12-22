.class public Lcom/android/settings/accessibility/TimeLimitDialog;
.super Lcom/sec/android/touchwiz/app/TwTimePickerDialog;
.source "TimeLimitDialog.java"


# instance fields
.field calendar:Ljava/util/Calendar;

.field dateformat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/app/TwTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/touchwiz/app/TwTimePickerDialog;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/app/TwTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/TimeLimitDialog;->calendar:Ljava/util/Calendar;

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/TimeLimitDialog;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/TimeLimitDialog;->dateformat:Ljava/text/DateFormat;

    invoke-direct {p0, p3, p4}, Lcom/android/settings/accessibility/TimeLimitDialog;->updateTitle(II)V

    return-void
.end method

.method private getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, v0, Llibcore/icu/LocaleData;->timeFormat24:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private updateTitle(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/TimeLimitDialog;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/settings/accessibility/TimeLimitDialog;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/android/settings/accessibility/TimeLimitDialog;->dateformat:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/android/settings/accessibility/TimeLimitDialog;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/TimeLimitDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/app/TwTimePickerDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v2, "hour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "minute"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/TimeLimitDialog;->updateTitle(II)V

    return-void
.end method

.method public onTimeChanged(Lcom/sec/android/touchwiz/widget/TwTimePicker;II)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/android/settings/accessibility/TimeLimitDialog;->updateTitle(II)V

    return-void
.end method
