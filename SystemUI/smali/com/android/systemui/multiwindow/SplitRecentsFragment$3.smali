.class Lcom/android/systemui/multiwindow/SplitRecentsFragment$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SplitRecentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/SplitRecentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/SplitRecentsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$3;->this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/multiwindow/SplitRecentsFragment$3;->this$0:Lcom/android/systemui/multiwindow/SplitRecentsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/SplitRecentsFragment;->dismissRecentsToHome(Z)Z

    return-void
.end method
