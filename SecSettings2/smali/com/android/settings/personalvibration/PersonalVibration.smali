.class public Lcom/android/settings/personalvibration/PersonalVibration;
.super Landroid/app/Activity;
.source "PersonalVibration.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;
    }
.end annotation


# instance fields
.field backView:Lcom/android/settings/personalvibration/BackgroundView;

.field buttonLayout:Landroid/widget/LinearLayout;

.field centerButton:Landroid/widget/ImageView;

.field centerText:Landroid/widget/TextView;

.field leftButton:Landroid/widget/Button;

.field protected mAlert:Lcom/android/internal/app/AlertController;

.field protected mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

.field mDialog:Landroid/app/AlertDialog;

.field private mEditPattern:Landroid/widget/TextView;

.field private mFromContact:Ljava/lang/Boolean;

.field mHandler:Landroid/os/Handler;

.field mOkBtn:Landroid/widget/Button;

.field patternLong:[J

.field rightButton:Landroid/widget/Button;

.field stopButton:Landroid/widget/Button;

.field stopButtonLayout:Landroid/widget/LinearLayout;

.field vib:Landroid/os/SystemVibrator;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->patternLong:[J

    return-void
.end method

.method public static StringToLongArray(Ljava/lang/String;)[J
    .locals 8

    const-string v3, ", "

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "PersonalVibration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StringToLongArray, size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    array-length v3, v2

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    const-string v3, "PersonalVibration"

    const-string v4, "string is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    array-length v3, v2

    new-array v1, v3, [J

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v0

    const-string v3, "PersonalVibration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ret["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v6, v1, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/settings/personalvibration/PersonalVibration;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/personalvibration/PersonalVibration;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mFromContact:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const-string v1, "PersonalVibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "afterTextChanged(), stage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v1}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v1}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v1, v2, :cond_1

    :cond_0
    if-gtz v0, :cond_2

    const-string v1, "PersonalVibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ok btn is disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mOkBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mOkBtn:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public cancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->finish()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->finish()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/ImageView;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v2

    sget-object v3, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v2, v3, :cond_1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/settings/personalvibration/PersonalVibration$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/settings/personalvibration/PersonalVibration$1;-><init>(Lcom/android/settings/personalvibration/PersonalVibration;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v2

    sget-object v3, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/BackgroundView;->getPatternString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/BackgroundView;->setPauseTimer()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v2}, Landroid/os/SystemVibrator;->cancel()V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v2

    sget-object v3, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/BackgroundView;->setPauseTimer()V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_b

    const-string v2, "PersonalVibration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "leftButton is clicked, backView state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v4}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v2

    sget-object v3, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v2, v3, :cond_a

    const/4 v9, 0x0

    const/16 v14, 0x1a

    const-string v2, "PersonalVibration"

    const-string v3, "Save button was clicked"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalvibration/PersonalVibration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_7

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    :cond_5
    const-string v2, "vibration_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v2, "PersonalVibration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastSavedName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0a0fc9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/personalvibration/PersonalVibration;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const-string v2, " "

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/4 v2, 0x0

    aget-object v15, v16, v2

    if-eqz v13, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " [0-9]+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, " "

    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    const/4 v2, 0x1

    aget-object v2, v17, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v2, v10, 0x5

    add-int/lit8 v9, v2, 0x1

    const-string v2, "PersonalVibration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentIndex : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v2, "PersonalVibration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_2
    const-string v2, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/personalvibration/PersonalVibration;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodManager;

    const v2, 0x7f04013c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    const v2, 0x7f1002b8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    const v3, 0x7f0a0fc9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, v9, -0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/personalvibration/PersonalVibration;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, v14}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0fcf

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings/personalvibration/PersonalVibration$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v12}, Lcom/android/settings/personalvibration/PersonalVibration$3;-><init>(Lcom/android/settings/personalvibration/PersonalVibration;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a06a2

    new-instance v4, Lcom/android/settings/personalvibration/PersonalVibration$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v12}, Lcom/android/settings/personalvibration/PersonalVibration$2;-><init>(Lcom/android/settings/personalvibration/PersonalVibration;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->mOkBtn:Landroid/widget/Button;

    goto/16 :goto_0

    :catch_0
    move-exception v11

    :try_start_1
    const-string v2, "PersonalVibration"

    const-string v3, "Cannot get PersonalVibration"

    invoke-static {v2, v3, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v2

    sget-object v3, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v2, v3, :cond_0

    const v2, 0x7f0a0fce

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalvibration/PersonalVibration;->stopRecording()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v2}, Landroid/os/SystemVibrator;->cancel()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "PersonalVibration"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->stopRecording()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->setPauseTimer()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    const-string v0, "PersonalVibration"

    const-string v1, "save dialog is displayed so calling addTextChangedListener()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const v10, 0x7f100021

    const v9, 0x7f040141

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "PersonalVibration"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/android/internal/app/AlertController;

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-direct {v4, p0, p0, v5}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mAlert:Lcom/android/internal/app/AlertController;

    new-instance v4, Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {v4, p0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings/personalvibration/PersonalVibration;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v5, 0x0

    invoke-virtual {v2, v9, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x7f0a0fc0

    invoke-virtual {p0, v5}, Lcom/android/settings/personalvibration/PersonalVibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x7f0a080e

    invoke-virtual {p0, v5}, Lcom/android/settings/personalvibration/PersonalVibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x7f0a0166

    invoke-virtual {p0, v5}, Lcom/android/settings/personalvibration/PersonalVibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x7f0a06a2

    invoke-virtual {p0, v5}, Lcom/android/settings/personalvibration/PersonalVibration;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->setupAlert()V

    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v4, v4, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x7f1002cb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v4, v4, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x7f1002ca

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/personalvibration/BackgroundView;

    iput-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v4, v4, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x7f1001fb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v4, v4, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x7f1002cd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v4, v4, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v4, v4, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x7f1002cc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v5, -0x3

    invoke-virtual {v4, v5}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v4, p0}, Lcom/android/settings/personalvibration/BackgroundView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v4, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;-><init>(Lcom/android/settings/personalvibration/PersonalVibration;Lcom/android/settings/personalvibration/PersonalVibration$1;)V

    iput-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    iget-object v5, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Lcom/android/settings/personalvibration/BackgroundView;->setHandler(Landroid/os/Handler;)V

    new-instance v4, Landroid/os/SystemVibrator;

    invoke-direct {v4}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.pattern.FROM_CONTACT"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mFromContact:Ljava/lang/Boolean;

    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFromContact : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/settings/personalvibration/PersonalVibration;->setContentView(I)V

    const v4, 0x7f1002cb

    invoke-virtual {p0, v4}, Lcom/android/settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerText:Landroid/widget/TextView;

    const v4, 0x7f1002ca

    invoke-virtual {p0, v4}, Lcom/android/settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/personalvibration/BackgroundView;

    iput-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    const v4, 0x7f1001fb

    invoke-virtual {p0, v4}, Lcom/android/settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f1002cd

    invoke-virtual {p0, v4}, Lcom/android/settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v10}, Lcom/android/settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/ImageView;

    const v4, 0x7f1000b5

    invoke-virtual {p0, v4}, Lcom/android/settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    const v4, 0x7f1000b6

    invoke-virtual {p0, v4}, Lcom/android/settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    const v4, 0x7f1002ce

    invoke-virtual {p0, v4}, Lcom/android/settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/settings/personalvibration/PersonalVibration;->setRequestedOrientation(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->setPauseTimer()V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->finish()V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->stopRecording()V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->setPauseTimer()V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->stopRecording()V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v1}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v1, v2, :cond_0

    const-string v1, "PersonalVibration"

    const-string v2, "onResume() : stage is recording so stop recording"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->stopRecording()V

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v1}, Landroid/os/SystemVibrator;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/personalvibration/PersonalVibration;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const/16 v0, 0x1a

    if-lt p4, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0023

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRunning()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v2

    sget-object v3, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->runRecording()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method runRecording()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->setRunRecordingTimer()V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->patternLong:[J

    return-void
.end method

.method protected setupAlert()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->installContent()V

    return-void
.end method

.method stopRecording()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->setStopTimer()V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
