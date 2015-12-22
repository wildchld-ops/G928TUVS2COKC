.class public Lcom/android/keyguard/sec/SecKeyguardTextClock;
.super Landroid/widget/TextClock;
.source "SecKeyguardTextClock.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, p1

    goto :goto_0

    :cond_1
    move-object p2, p0

    goto :goto_0
.end method


# virtual methods
.method public is24HourModeEnabled()Z
    .locals 8

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "time_12_24"

    const/4 v7, -0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v5, 0x1

    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    instance-of v5, v1, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_1

    move-object v3, v1

    check-cast v3, Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x48

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    const-string v4, "24"

    :goto_0
    const-string v5, "24"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_1
    return v5

    :cond_0
    const-string v4, "12"

    goto :goto_0

    :cond_1
    const-string v4, "12"

    goto :goto_0

    :cond_2
    const-string v5, "24"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1
.end method

.method public isFirstDigitOne()Z
    .locals 10

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getTimeZone()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->is24HourModeEnabled()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v7}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getFormat24Hour()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v9, v2, Llibcore/icu/LocaleData;->timeFormat24:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    invoke-static {v0, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_0

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x31

    if-ne v7, v8, :cond_0

    const/4 v6, 0x1

    :cond_0
    return v6

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getFormat24Hour()Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v9, v2, Llibcore/icu/LocaleData;->timeFormat12:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->updateClock()V

    invoke-super {p0}, Landroid/widget/TextClock;->onAttachedToWindow()V

    return-void
.end method

.method public updateClock()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getFormat24Hour()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateTimeFormat()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->status_view_12_hours_format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->status_view_24_hours_format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    return-void
.end method
