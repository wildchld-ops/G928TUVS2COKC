.class final Lcom/android/keyguard/KeyguardStatusView$Patterns;
.super Ljava/lang/Object;
.source "KeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Patterns"
.end annotation


# static fields
.field static cacheKey:Ljava/lang/String;

.field static clockView12:Ljava/lang/String;

.field static clockView24:Ljava/lang/String;

.field static dateView:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static update(Landroid/content/Context;Z)V
    .locals 12

    const v11, 0xee01

    const/16 v10, 0x3a

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz p1, :cond_3

    sget v7, Lcom/android/keyguard/R$string;->abbrev_wday_month_day_no_year_alarm:I

    :goto_0
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v7, Lcom/android/keyguard/R$string;->clock_12hr_format:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v7, Lcom/android/keyguard/R$string;->clock_24hr_format:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v7, 0x11200b3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "date_format"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v3, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    :cond_0
    sput-object v3, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    :goto_1
    invoke-static {v5, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    const-string v7, "a"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    const-string v8, "a"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    :cond_1
    invoke-static {v5, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView24:Ljava/lang/String;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isHKTWFeature()Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView24:Ljava/lang/String;

    sget-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->clockView12:Ljava/lang/String;

    :cond_2
    return-void

    :cond_3
    sget v7, Lcom/android/keyguard/R$string;->abbrev_wday_month_day_no_year:I

    goto :goto_0

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->cacheKey:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v5, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/keyguard/KeyguardStatusView$Patterns;->dateView:Ljava/lang/String;

    sput-object v4, Lcom/android/keyguard/KeyguardStatusView$Patterns;->cacheKey:Ljava/lang/String;

    goto :goto_1
.end method
