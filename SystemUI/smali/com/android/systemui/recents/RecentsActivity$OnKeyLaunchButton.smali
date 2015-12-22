.class final Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnKeyLaunchButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$OnKeyLaunchButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
