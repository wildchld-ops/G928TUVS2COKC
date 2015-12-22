.class public Lcom/android/incallui/SecEventDialpadOptionButtons;
.super Ljava/lang/Object;
.source "SecEventDialpadOptionButtons.java"


# instance fields
.field private final mInCallMenuPopup:Lcom/android/incallui/SecTabletInCallMenuPopup;

.field private final needToShowMenu:Z

.field private final needToShowVolumeMenu:Z


# direct methods
.method constructor <init>(ZZLcom/android/incallui/SecTabletInCallMenuPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/incallui/SecEventDialpadOptionButtons;->needToShowMenu:Z

    iput-boolean p2, p0, Lcom/android/incallui/SecEventDialpadOptionButtons;->needToShowVolumeMenu:Z

    iput-object p3, p0, Lcom/android/incallui/SecEventDialpadOptionButtons;->mInCallMenuPopup:Lcom/android/incallui/SecTabletInCallMenuPopup;

    return-void
.end method


# virtual methods
.method getSecTabletInCallMenuPopup()Lcom/android/incallui/SecTabletInCallMenuPopup;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecEventDialpadOptionButtons;->mInCallMenuPopup:Lcom/android/incallui/SecTabletInCallMenuPopup;

    return-object v0
.end method

.method showMenu()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecEventDialpadOptionButtons;->needToShowMenu:Z

    return v0
.end method

.method showVolumeMenu()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecEventDialpadOptionButtons;->needToShowVolumeMenu:Z

    return v0
.end method
