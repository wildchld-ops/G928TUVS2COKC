.class public Lcom/android/systemui/settings/ToggleSlider;
.super Landroid/widget/RelativeLayout;
.source "ToggleSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/ToggleSlider$TouchListener;,
        Lcom/android/systemui/settings/ToggleSlider$Listener;
    }
.end annotation


# static fields
.field private static final AUTO_BRIGHTNESS_DETAIL_STEP:I = 0x19

.field private static final ENABLE_AUTO_BRIGHTNESS_ADJUSTMENT:Z

.field private static final NEED_TO_UPDATE_PROGRESSBAR:I = -0x1

.field static final TAG:Ljava/lang/String; = "ToggleSlider"

.field private static mDiagnosticLogs:Z


# instance fields
.field private final EDM_FALSE:I

.field private final EDM_NULL:I

.field private final EDM_TRUE:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

.field private mAutoBrightnessGroup:Landroid/view/ViewGroup;

.field private mAutomaticAvailable:Z

.field private mBrightnessIcon:Landroid/widget/ImageView;

.field private final mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mContext:Landroid/content/Context;

.field private mEnabledHighBrightnessMode:Z

.field private mFromUser:Z

.field private mHbmIcon:Landroid/widget/ImageView;

.field private mHbmText:Landroid/widget/TextView;

.field public mIsMirror:Z

.field private mIsTogglePressed:Z

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLabel:Landroid/widget/TextView;

.field private mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

.field private mMirror:Lcom/android/systemui/settings/ToggleSlider;

.field private mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private mOutdoorModeOn:Z

.field private mPossibleHighbrightnessMode:Z

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mSeekTouchListener:Landroid/view/View$OnTouchListener;

.field private mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

.field private mSliderLayout:Landroid/widget/LinearLayout;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mStopMirroring:Z

.field private final mTWSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mToggle:Landroid/widget/CompoundButton;

.field private final mTogglePadding:I

.field private mTracking:Z

.field private final mTwSeekTouchListener:Landroid/view/View$OnTouchListener;

.field private mTwSlider:Landroid/widget/SeekBar;

.field private mTwSliderLayout:Landroid/widget/LinearLayout;

.field private mTwSliderText:Landroid/widget/TextView;

.field private settedSplitValue:I

.field private settedValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/settings/ToggleSlider;->ENABLE_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/settings/ToggleSlider;->mDiagnosticLogs:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/settings/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/settings/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    invoke-direct/range {p0 .. p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mIsMirror:Z

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mFromUser:Z

    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/settings/ToggleSlider;->settedSplitValue:I

    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/settings/ToggleSlider;->settedValue:I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mOutdoorModeOn:Z

    new-instance v11, Lcom/android/systemui/settings/ToggleSlider$5;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/systemui/settings/ToggleSlider$5;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v11, Lcom/android/systemui/settings/ToggleSlider$6;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/systemui/settings/ToggleSlider$6;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v11, Lcom/android/systemui/settings/ToggleSlider$7;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/systemui/settings/ToggleSlider$7;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSeekTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v11, Lcom/android/systemui/settings/ToggleSlider$8;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/systemui/settings/ToggleSlider$8;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTWSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v11, Lcom/android/systemui/settings/ToggleSlider$9;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/systemui/settings/ToggleSlider$9;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSeekTouchListener:Landroid/view/View$OnTouchListener;

    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/settings/ToggleSlider;->EDM_NULL:I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/settings/ToggleSlider;->EDM_FALSE:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/settings/ToggleSlider;->EDM_TRUE:I

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v11

    const-string v12, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    sput-boolean v11, Lcom/android/systemui/settings/ToggleSlider;->mDiagnosticLogs:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    const v11, 0x7f0400cf

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v11, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget-object v11, Lcom/android/systemui/R$styleable;->ToggleSlider:[I

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v11, v2, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const v11, 0x7f0e040a

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v11, "keyguard"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v11, "statusbar"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/StatusBarManager;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const v11, 0x7f0e0409

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CompoundButton;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v11, v12}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/CompoundButton;->setLayerType(ILandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a009a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    const v11, 0x7f0e0404

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/settings/ToggleSeekBar;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v11, v12}, Lcom/android/systemui/settings/ToggleSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mSeekTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v11, v12}, Lcom/android/systemui/settings/ToggleSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a00d2

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/settings/ToggleSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v11}, Lcom/android/systemui/settings/ToggleSeekBar;->bringToFront()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/systemui/settings/ToggleSeekBar;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mEnabledHighBrightnessMode:Z

    const v11, 0x7f0e0405

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mHbmText:Landroid/widget/TextView;

    const v11, 0x7f0e03ff

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mHbmIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mHbmIcon:Landroid/widget/ImageView;

    new-instance v12, Lcom/android/systemui/settings/ToggleSlider$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/settings/ToggleSlider$1;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v11, 0x7f0e0400

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    const v11, 0x7f0e03fe

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mBrightnessIcon:Landroid/widget/ImageView;

    sget-boolean v11, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mBrightnessIcon:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const v11, 0x7f0e0403

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    const v11, 0x7f0e0406

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    const v11, 0x7f0e0408

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    const v11, 0x7f0e0407

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    sget-boolean v11, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setMode(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020462

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020463

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setSplitProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020464

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a00d2

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mTWSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSeekTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    const-string v11, "sensor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/SensorManager;

    const/4 v11, -0x1

    invoke-virtual {v8, v11}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v7

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_3

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Sensor;

    invoke-virtual {v11}, Landroid/hardware/Sensor;->getType()I

    move-result v9

    const/4 v11, 0x5

    if-ne v9, v11, :cond_2

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    invoke-virtual {v11, v12}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnable(Z)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    if-eqz v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d022f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d0303

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v11, v4}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    if-eqz v11, :cond_8

    sget-boolean v11, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "screen_brightness_mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {v12}, Landroid/widget/SeekBar;->getProgress()I

    move-result v12

    mul-int/lit8 v12, v12, 0x19

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    :cond_5
    :goto_1
    new-instance v10, Lcom/android/systemui/settings/ToggleSlider$TouchListener;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/systemui/settings/ToggleSlider$TouchListener;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    const v11, 0x7f0e0402

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/settings/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutoBrightnessGroup:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutoBrightnessGroup:Landroid/view/ViewGroup;

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutoBrightnessGroup:Landroid/view/ViewGroup;

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->IsDualFolderType(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->isFolderOpen(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    new-instance v12, Lcom/android/systemui/settings/ToggleSlider$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/settings/ToggleSlider$2;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-virtual {v11, v12}, Landroid/widget/CompoundButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    new-instance v12, Lcom/android/systemui/settings/ToggleSlider$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/settings/ToggleSlider$3;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-virtual {v11, v12}, Landroid/widget/CompoundButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    new-instance v12, Lcom/android/systemui/settings/ToggleSlider$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/settings/ToggleSlider$4;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-virtual {v11, v12}, Lcom/android/systemui/settings/ToggleSeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v11, 0x7f0c042d

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTogglePadding:I

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    if-nez v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v12}, Lcom/android/systemui/settings/ToggleSeekBar;->getPaddingStart()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v13}, Lcom/android/systemui/settings/ToggleSeekBar;->getPaddingTop()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/settings/ToggleSlider;->mTogglePadding:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v15}, Lcom/android/systemui/settings/ToggleSeekBar;->getPaddingBottom()I

    move-result v15

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/systemui/settings/ToggleSeekBar;->setPaddingRelative(IIII)V

    :cond_7
    return-void

    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    if-nez v11, :cond_9

    sget-boolean v11, Lcom/android/systemui/statusbar/Feature;->mOutdoorMode:Z

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    const v13, 0x7f0d0574

    invoke-virtual {v12, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v12}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    if-eqz v11, :cond_5

    sget-boolean v11, Lcom/android/systemui/settings/ToggleSlider;->ENABLE_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "screen_brightness_mode"

    const/4 v14, 0x0

    invoke-static {v11, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v13, 0x1

    if-eq v11, v13, :cond_b

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v12, v11}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "screen_brightness_mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v12}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    goto :goto_4

    :cond_a
    const/4 v11, 0x0

    goto :goto_6

    :cond_b
    const/4 v11, 0x0

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/ToggleSlider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mPossibleHighbrightnessMode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/ToggleSlider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mEnabledHighBrightnessMode:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/settings/ToggleSlider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/settings/ToggleSlider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mOutdoorModeOn:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSlider;->showConfirmPopup()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/settings/ToggleSlider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/settings/ToggleSlider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mTWSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mHbmIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/settings/ToggleSlider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mFromUser:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/android/systemui/settings/ToggleSlider;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/settings/ToggleSlider;->settedValue:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/settings/ToggleSlider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mStopMirroring:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/systemui/settings/ToggleSlider;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/settings/ToggleSlider;->settedSplitValue:I

    return p1
.end method

.method static synthetic access$2602(Lcom/android/systemui/settings/ToggleSlider;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/ToggleSlider;)Lcom/android/systemui/settings/ToggleSlider$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/ToggleSlider;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/settings/ToggleSlider;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/settings/ToggleSlider;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/settings/ToggleSlider;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mIsTogglePressed:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/settings/ToggleSlider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mIsTogglePressed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/settings/ToggleSlider;->ENABLE_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    return v0
.end method

.method static synthetic access$900()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/settings/ToggleSlider;->mDiagnosticLogs:Z

    return v0
.end method

.method private getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p3

    move-object v4, p4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isRTL()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private showConfirmPopup()V
    .locals 11

    const/16 v10, 0xf

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "ToggleSlider"

    const-string v6, "outdoor mode dialog is already showing"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v5, "ToggleSlider"

    const-string v6, "outdoor mode dialog is showing"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f0400dd

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v5, 0x7f0e0427

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object v4, v5

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0e0428

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    move-object v1, v5

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0576

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d0575

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/systemui/settings/ToggleSlider$11;

    invoke-direct {v7, p0, v1}, Lcom/android/systemui/settings/ToggleSlider$11;-><init>(Lcom/android/systemui/settings/ToggleSlider;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    new-instance v7, Lcom/android/systemui/settings/ToggleSlider$10;

    invoke-direct {v7, p0}, Lcom/android/systemui/settings/ToggleSlider$10;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/settings/ToggleSlider;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/systemui/settings/ToggleSlider$12;

    invoke-direct {v6, p0}, Lcom/android/systemui/settings/ToggleSlider$12;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/systemui/settings/ToggleSlider$13;

    invoke-direct {v6, p0}, Lcom/android/systemui/settings/ToggleSlider$13;-><init>(Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSlider;->statusBarCollapse()V

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method


# virtual methods
.method public getMirrorController()Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-object v0
.end method

.method public hideToggle()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mAutoBrightnessGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mAutoBrightnessGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public initSliderValue()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/settings/ToggleSlider;->settedSplitValue:I

    iput v0, p0, Lcom/android/systemui/settings/ToggleSlider;->settedValue:I

    return-void
.end method

.method public initSplitValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public initValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setProgress(I)V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    invoke-interface {v0, p0}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onInit(Lcom/android/systemui/settings/ToggleSlider;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10

    const v6, 0x7f0d022f

    const/4 v7, 0x1

    const/4 v9, 0x0

    iget-boolean v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mOutdoorMode:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0574

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v3, ""

    new-instance v1, Ljava/util/Locale;

    const-string v4, "en_US"

    invoke-direct {v1, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v4, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSlider;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->IsDualFolderType(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->isFolderOpen(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSlider;->setSliderInDualFolderOpened()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mLabel:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0303

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02cb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/settings/ToggleSeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSlider;->setSliderInDualFolderClosed()V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public setFromUser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mFromUser:Z

    return-void
.end method

.method protected setHbmPMSEnter(Z)V
    .locals 6

    const/16 v2, 0x8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mPossibleHighbrightnessMode:Z

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    iget-boolean v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mEnabledHighBrightnessMode:Z

    invoke-interface {v1, v4}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChangedHBM(Z)V

    :cond_0
    const-string v1, "ToggleSlider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setHbmPMSEnter  mPossibleHighbrightnessMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/settings/ToggleSlider;->mPossibleHighbrightnessMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mEnabledHighBrightnessMode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/settings/ToggleSlider;->mEnabledHighBrightnessMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mHbmIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v1, v3

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider;->mHbmText:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    move v1, v3

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v4, v1, Lcom/android/systemui/settings/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    if-eqz p1, :cond_5

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v4, v1, Lcom/android/systemui/settings/ToggleSlider;->mHbmIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    move v1, v3

    :goto_4
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, v1, Lcom/android/systemui/settings/ToggleSlider;->mHbmText:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    :goto_5
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_4

    :cond_7
    move v3, v2

    goto :goto_5
.end method

.method protected setHbmUserEnable(Z)V
    .locals 8

    const v3, 0x7f0d057f

    const v2, 0x7f0d057e

    const v5, 0x7f0a008c

    const v4, 0x7f0a008b

    const-string v1, "ToggleSlider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HBM is turned "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/settings/ToggleSlider;->mHbmText:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/android/systemui/settings/ToggleSlider;->mHbmText:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mHbmIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, v1, Lcom/android/systemui/settings/ToggleSlider;->mHbmText:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, v1, Lcom/android/systemui/settings/ToggleSlider;->mHbmText:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, v1, Lcom/android/systemui/settings/ToggleSlider;->mHbmIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mEnabledHighBrightnessMode:Z

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3
.end method

.method public setMax(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    :cond_0
    return-void
.end method

.method public setMirror(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, v0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->setProgress(I)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setSplitMax(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setSplitValue(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setSplitText(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mAutomaticAvailable:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mOutdoorMode:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSlider;->hideToggle()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/settings/ToggleSlider;->mIsMirror:Z

    :cond_2
    return-void
.end method

.method public setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-void
.end method

.method public setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    return-void
.end method

.method public setOutdoorMode(ZZ)V
    .locals 3

    const-string v0, "ToggleSlider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutdoorMode mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "changeDB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mOutdoorModeOn:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSliderInDualFolderClosed()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    return-void
.end method

.method public setSliderInDualFolderOpened()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v2}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, p0, v1, v3, v2}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZI)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/settings/ToggleSlider;->updateIcon(ZI)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    return-void
.end method

.method public setSliderProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setProgress(I)V

    return-void
.end method

.method public setSplitMax(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setSplitMax(I)V

    :cond_0
    return-void
.end method

.method public setSplitText(I)V
    .locals 8

    const/4 v7, 0x1

    const-string v0, ""

    invoke-direct {p0}, Lcom/android/systemui/settings/ToggleSlider;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider;->mMirror:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v1, p1}, Lcom/android/systemui/settings/ToggleSlider;->setSplitText(I)V

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setSplitValue(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mIsMirror:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mFromUser:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/settings/ToggleSlider;->settedSplitValue:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mTwSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    iput p1, p0, Lcom/android/systemui/settings/ToggleSlider;->settedSplitValue:I

    :cond_0
    return-void
.end method

.method public setStopMirroring(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSlider;->mStopMirroring:Z

    return-void
.end method

.method public setValue(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mIsMirror:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mFromUser:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/settings/ToggleSlider;->settedValue:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setProgress(I)V

    iput p1, p0, Lcom/android/systemui/settings/ToggleSlider;->settedValue:I

    :cond_0
    return-void
.end method

.method protected statusBarCollapse()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSlider;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    return-void
.end method

.method public updateIcon(ZI)V
    .locals 5

    const v0, 0x7f020204

    const v1, 0x7f020202

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider;->mBrightnessIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    ushr-int/lit8 v3, v3, 0x18

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setAlpha(F)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setValue(I)V

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->IsDualFolderType(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isFolderOpen(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 p1, 0x0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    if-eqz p1, :cond_4

    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setIcon(IZ)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method
