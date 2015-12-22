.class public Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;
.super Landroid/widget/FrameLayout;
.source "SubPhoneStatusBarView.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "SubPhoneStatusBarView"


# instance fields
.field mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public panelsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;->panelsEnabled()Z

    move-result v0

    return v0
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->mSubBar:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBar;

    return-void
.end method
