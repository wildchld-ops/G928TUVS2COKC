.class public Lcom/android/incallui/CallButtonFragment;
.super Lcom/android/incallui/BaseFragment;
.source "CallButtonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/incallui/CallButtonPresenter$CallButtonUi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/CallButtonPresenter;",
        "Lcom/android/incallui/CallButtonPresenter$CallButtonUi;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/PopupMenu$OnDismissListener;",
        "Landroid/widget/PopupMenu$OnMenuItemClickListener;",
        "Lcom/android/incallui/CallButtonPresenter$CallButtonUi;"
    }
.end annotation


# instance fields
.field private mAddCallButton:Landroid/widget/ImageButton;

.field private mAudioButton:Landroid/widget/CompoundButton;

.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private mChangeToVideoButton:Landroid/widget/ImageButton;

.field private mChangeToVoiceButton:Landroid/widget/ImageButton;

.field private mCurrentThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

.field private mHoldButton:Landroid/widget/CompoundButton;

.field private mIsEnabled:Z

.field private mMergeButton:Landroid/widget/ImageButton;

.field private mMuteButton:Landroid/widget/CompoundButton;

.field private mOverflowButton:Landroid/widget/ImageButton;

.field private mOverflowPopup:Landroid/widget/PopupMenu;

.field private mPauseVideoButton:Landroid/widget/CompoundButton;

.field private mPrevAudioMode:I

.field private mShowDialpadButton:Landroid/widget/CompoundButton;

.field private mSwapButton:Landroid/widget/ImageButton;

.field private mSwitchCameraButton:Landroid/widget/CompoundButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/CallButtonFragment;->mPrevAudioMode:I

    return-void
.end method

.method private addFocused(Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;)V
    .locals 4

    const/4 v2, 0x1

    new-array v0, v2, [I

    const/4 v2, 0x0

    const v3, 0x101009c

    aput v3, v0, v2

    const v2, 0x7f02002b

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private addSelected(Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [I

    const v2, 0x10100a1

    aput v2, v0, v3

    const v2, 0x7f020027

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iget v3, p3, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private addSelectedAndFocused(Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;)V
    .locals 3

    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    const v2, 0x7f020028

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x10100a1
        0x101009c
    .end array-data
.end method

.method private addUnselected(Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V
    .locals 4

    const/4 v3, 0x0

    const v1, 0x7f02002a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    iget v2, p3, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-array v1, v3, [I

    invoke-virtual {p2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private backgroundDrawable(Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)Landroid/graphics/drawable/RippleDrawable;
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090035

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/CallButtonFragment;->addFocused(Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;)V

    invoke-direct {p0, v0, v2, p1}, Lcom/android/incallui/CallButtonFragment;->addUnselected(Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v3
.end method

.method private compoundBackgroundDrawable(Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)Landroid/graphics/drawable/RippleDrawable;
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090035

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/CallButtonFragment;->addSelectedAndFocused(Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;)V

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/CallButtonFragment;->addFocused(Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;)V

    invoke-direct {p0, v0, v2, p1}, Lcom/android/incallui/CallButtonFragment;->addSelected(Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V

    invoke-direct {p0, v0, v2, p1}, Lcom/android/incallui/CallButtonFragment;->addUnselected(Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable;Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v3
.end method

.method private isAudio(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupported(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAudioButtonClicked()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioButtonClicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/AudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->showAudioModePopup()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->toggleSpeakerphone()V

    goto :goto_0
.end method

.method private showAudioModePopup()V
    .locals 12

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v7, "showAudioPopup()..."

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v10, 0x7f0b001e

    invoke-direct {v1, v7, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v7, Landroid/widget/PopupMenu;

    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-direct {v7, v1, v10}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    iget-object v7, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const v10, 0x7f120003

    iget-object v11, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v11}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v7, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iget-object v7, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    iget-object v7, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v7, 0x7f10037f

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v7, 0x8

    invoke-direct {p0, v7}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v7

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v7, 0x7f100380

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v7, 0x7f100381

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v5

    if-nez v5, :cond_1

    move v7, v8

    :goto_0
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-nez v5, :cond_0

    move v9, v8

    :cond_0
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const v7, 0x7f100382

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v7

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v7, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V

    iput-boolean v8, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopupVisible:Z

    return-void

    :cond_1
    move v7, v9

    goto :goto_0
.end method

.method private updateAudioButtonContentDescription(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_1

    const v0, 0x7f0d012a

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const v0, 0x7f0d012b

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0d012d

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0d012c

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0d012a

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updateAudioButtons(I)V
    .locals 12

    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v2

    const/16 v10, 0x8

    invoke-direct {p0, v10}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v9

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    const-string v10, "updateAudioButtons - popup menu mode"

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v0, 0x1

    const/4 v6, 0x1

    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v4, 0x1

    :goto_0
    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setSelected(Z)V

    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "audioButtonEnabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "audioButtonChecked: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showMoreIndicator: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showBluetoothIcon: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showSpeakerphoneIcon: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showHandsetIcon: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_4

    iget-boolean v10, p0, Lcom/android/incallui/CallButtonFragment;->mIsEnabled:Z

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v11, v10}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v10, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v10}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\'layers\' drawable: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v10, 0x7f100354

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v8, :cond_5

    const/16 v10, 0xff

    :goto_3
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v10, 0x7f100355

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v6, :cond_6

    const/16 v10, 0xff

    :goto_4
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v10, 0x7f100356

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v4, :cond_7

    const/16 v10, 0xff

    :goto_5
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v10, 0x7f100357

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v5, :cond_8

    const/16 v10, 0xff

    :goto_6
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v10, 0x7f100358

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v7, :cond_9

    const/16 v10, 0xff

    :goto_7
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_0
    const/16 v10, 0x8

    invoke-direct {p0, v10}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_2
    if-eqz v9, :cond_3

    const-string v10, "updateAudioButtons - speaker toggle mode"

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/16 v10, 0x8

    invoke-direct {p0, v10}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v0

    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v10, v0}, Landroid/widget/CompoundButton;->setSelected(Z)V

    const/4 v8, 0x1

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_3
    const-string v10, "updateAudioButtons - disabled..."

    invoke-static {p0, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setSelected(Z)V

    const/4 v8, 0x1

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    const/4 v10, 0x0

    goto :goto_5

    :cond_8
    const/4 v10, 0x0

    goto :goto_6

    :cond_9
    const/4 v10, 0x0

    goto :goto_7
.end method


# virtual methods
.method public changeArrow(I)V
    .locals 0

    return-void
.end method

.method public configureOverflowMenu(ZZZZ)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowPopup:Landroid/widget/PopupMenu;

    if-nez v2, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v5, 0x7f0b001e

    invoke-direct {v0, v2, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v2, Landroid/widget/PopupMenu;

    iget-object v5, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-direct {v2, v0, v5}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowPopup:Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v5, 0x7f120004

    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v6}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowPopup:Landroid/widget/PopupMenu;

    new-instance v5, Lcom/android/incallui/CallButtonFragment$1;

    invoke-direct {v5, p0}, Lcom/android/incallui/CallButtonFragment$1;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v2, v5}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowPopup:Landroid/widget/PopupMenu;

    new-instance v5, Lcom/android/incallui/CallButtonFragment$2;

    invoke-direct {v5, p0}, Lcom/android/incallui/CallButtonFragment$2;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v2, v5}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f100383

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v2, 0x7f100384

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v2, 0x7f100385

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v2, 0x7f100386

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz p3, :cond_2

    iget-object v5, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v2, 0x7f100387

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, p4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-interface {v1}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method createPresenter()Lcom/android/incallui/CallButtonPresenter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->createPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    return-object v0
.end method

.method public displayDialpad(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->displayDialpad(ZZ)V

    :cond_0
    return-void
.end method

.method public enableChangeToVideoButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public enableHold(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    return-void
.end method

.method public enableMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method getUi()Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    .locals 0

    return-object p0
.end method

.method bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getUi()Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    move-result-object v0

    return-object v0
.end method

.method public isDialpadVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick(View "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", id "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")..."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    const-string v2, "onClick: unexpected"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p1, v4, v2}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->onAudioButtonClicked()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->addCallClicked()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->changeToVoiceClicked()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    iget-object v5, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v2, v3}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->mergeClicked()V

    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    iget-object v5, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v2, v3}, Lcom/android/incallui/CallButtonPresenter;->holdClicked(Z)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->swapClicked()V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    iget-object v5, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v5

    if-nez v5, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {v2, v3}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->changeToVideoClicked()V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    iget-object v3, p0, Lcom/android/incallui/CallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallButtonPresenter;->switchCameraClicked(Z)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    iget-object v5, p0, Lcom/android/incallui/CallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v5

    if-nez v5, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {v2, v3}, Lcom/android/incallui/CallButtonPresenter;->pauseVideoClicked(Z)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f10002c
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_4
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f040006

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f10002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVoiceButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f10002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f10002f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f100030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f100031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f100032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVideoButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f100033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f100034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f100035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f100036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f100037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onDismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopupVisible:Z

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onMenuItemClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  title: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick:  unexpected View ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (MenuItem = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    const/4 v1, 0x1

    return v1

    :pswitch_0
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f10037f
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->refreshMuteState()V

    :cond_0
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->updateColors()V

    return-void
.end method

.method public refreshAudioModePopup()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopupVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->showAudioModePopup()V

    :cond_0
    return-void
.end method

.method public setAudio(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->refreshAudioModePopup()V

    iget v0, p0, Lcom/android/incallui/CallButtonFragment;->mPrevAudioMode:I

    if-eq v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtonContentDescription(I)V

    iput p1, p0, Lcom/android/incallui/CallButtonFragment;->mPrevAudioMode:I

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/incallui/CallButtonFragment;->mIsEnabled:Z

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVideoButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public setHold(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public setPauseVideoButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setSelected(Z)V

    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->refreshAudioModePopup()V

    return-void
.end method

.method public setSwitchCameraButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setSelected(Z)V

    return-void
.end method

.method public showAddCallButton(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show Add call button: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showAudioButton(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showChangeToVideoButton(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVideoButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showChangeToVoiceButton(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVoiceButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showDialpadButton(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showHoldButton(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showMergeButton(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showOverflowButton(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showPauseVideoButton(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showSwapButton(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showSwitchCameraButton(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateColors()V
    .locals 13

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallPresenter;->getThemeColors()Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v10

    iget-object v11, p0, Lcom/android/incallui/CallButtonFragment;->mCurrentThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/incallui/CallButtonFragment;->mCurrentThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v11, 0x6

    new-array v4, v11, [Landroid/view/View;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/CompoundButton;

    aput-object v12, v4, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    aput-object v12, v4, v11

    const/4 v11, 0x2

    iget-object v12, p0, Lcom/android/incallui/CallButtonFragment;->mShowDialpadButton:Landroid/widget/CompoundButton;

    aput-object v12, v4, v11

    const/4 v11, 0x3

    iget-object v12, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    aput-object v12, v4, v11

    const/4 v11, 0x4

    iget-object v12, p0, Lcom/android/incallui/CallButtonFragment;->mSwitchCameraButton:Landroid/widget/CompoundButton;

    aput-object v12, v4, v11

    const/4 v11, 0x5

    iget-object v12, p0, Lcom/android/incallui/CallButtonFragment;->mPauseVideoButton:Landroid/widget/CompoundButton;

    aput-object v12, v4, v11

    move-object v0, v4

    array-length v7, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_1

    aget-object v3, v0, v5

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0, v10}, Lcom/android/incallui/CallButtonFragment;->compoundBackgroundDrawable(Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v1

    const v11, 0x7f100354

    invoke-virtual {v6, v11, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x6

    new-array v8, v11, [Landroid/widget/ImageButton;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVoiceButton:Landroid/widget/ImageButton;

    aput-object v12, v8, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/ImageButton;

    aput-object v12, v8, v11

    const/4 v11, 0x2

    iget-object v12, p0, Lcom/android/incallui/CallButtonFragment;->mChangeToVideoButton:Landroid/widget/ImageButton;

    aput-object v12, v8, v11

    const/4 v11, 0x3

    iget-object v12, p0, Lcom/android/incallui/CallButtonFragment;->mAddCallButton:Landroid/widget/ImageButton;

    aput-object v12, v8, v11

    const/4 v11, 0x4

    iget-object v12, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/ImageButton;

    aput-object v12, v8, v11

    const/4 v11, 0x5

    iget-object v12, p0, Lcom/android/incallui/CallButtonFragment;->mOverflowButton:Landroid/widget/ImageButton;

    aput-object v12, v8, v11

    move-object v0, v8

    array-length v7, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_2

    aget-object v3, v0, v5

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0, v10}, Lcom/android/incallui/CallButtonFragment;->backgroundDrawable(Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v2

    const v11, 0x7f100353

    invoke-virtual {v6, v11, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    iput-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mCurrentThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    goto/16 :goto_0
.end method
