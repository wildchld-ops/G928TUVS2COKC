.class Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$3;
.super Ljava/lang/Object;
.source "RecentsMultiWindowActivity.java"

# interfaces
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$3;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$3;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->setGuideTextVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$3;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->setGuideTextVisibility(I)V

    goto :goto_0
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onZoneChanged(I)V
    .locals 0

    return-void
.end method
