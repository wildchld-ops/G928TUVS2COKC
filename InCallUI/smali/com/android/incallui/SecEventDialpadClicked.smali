.class public Lcom/android/incallui/SecEventDialpadClicked;
.super Ljava/lang/Object;
.source "SecEventDialpadClicked.java"


# instance fields
.field private final animated:Z

.field private final checked:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/incallui/SecEventDialpadClicked;->checked:Z

    iput-boolean p2, p0, Lcom/android/incallui/SecEventDialpadClicked;->animated:Z

    return-void
.end method


# virtual methods
.method isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecEventDialpadClicked;->checked:Z

    return v0
.end method
