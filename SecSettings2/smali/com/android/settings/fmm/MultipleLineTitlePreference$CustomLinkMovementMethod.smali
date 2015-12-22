.class Lcom/android/settings/fmm/MultipleLineTitlePreference$CustomLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "MultipleLineTitlePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fmm/MultipleLineTitlePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomLinkMovementMethod"
.end annotation


# static fields
.field private static sInstance:Lcom/android/settings/fmm/MultipleLineTitlePreference$CustomLinkMovementMethod;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    sget-object v0, Lcom/android/settings/fmm/MultipleLineTitlePreference$CustomLinkMovementMethod;->sInstance:Lcom/android/settings/fmm/MultipleLineTitlePreference$CustomLinkMovementMethod;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/fmm/MultipleLineTitlePreference$CustomLinkMovementMethod;

    invoke-direct {v0}, Lcom/android/settings/fmm/MultipleLineTitlePreference$CustomLinkMovementMethod;-><init>()V

    sput-object v0, Lcom/android/settings/fmm/MultipleLineTitlePreference$CustomLinkMovementMethod;->sInstance:Lcom/android/settings/fmm/MultipleLineTitlePreference$CustomLinkMovementMethod;

    :cond_0
    sget-object v0, Lcom/android/settings/fmm/MultipleLineTitlePreference$CustomLinkMovementMethod;->sInstance:Lcom/android/settings/fmm/MultipleLineTitlePreference$CustomLinkMovementMethod;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    invoke-super/range {p0 .. p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/text/Spannable;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const-class v12, Landroid/text/style/URLSpan;

    invoke-interface {v9, v10, v11, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/URLSpan;

    array-length v9, v4

    if-eqz v9, :cond_0

    move-object v0, v7

    check-cast v0, Landroid/text/Spannable;

    move-object v9, v0

    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-interface {v9, v10}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    move-object v0, v7

    check-cast v0, Landroid/text/Spannable;

    move-object v9, v0

    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-interface {v9, v10}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v7, v6, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {v1, v3}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v9, Landroid/content/ActivityNotFoundException;

    invoke-direct {v9}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v9

    :catch_0
    move-exception v9

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v9

    const-string v10, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    # getter for: Lcom/android/settings/fmm/MultipleLineTitlePreference;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/fmm/MultipleLineTitlePreference;->access$000()Landroid/content/Context;

    move-result-object v9

    const-string v10, "com.android.settings"

    const-string v11, "FMMW"

    invoke-static {v9, v10, v11}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
