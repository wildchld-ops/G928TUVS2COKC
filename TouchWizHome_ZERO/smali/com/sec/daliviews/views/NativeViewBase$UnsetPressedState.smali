.class final Lcom/sec/daliviews/views/NativeViewBase$UnsetPressedState;
.super Ljava/lang/Object;
.source "NativeViewBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/views/NativeViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UnsetPressedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/daliviews/views/NativeViewBase;


# direct methods
.method constructor <init>(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/NativeViewBase$UnsetPressedState;->this$0:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/daliviews/views/NativeViewBase$UnsetPressedState;->this$0:Lcom/sec/daliviews/views/NativeViewBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/NativeViewBase;->setPressed(Z)V

    return-void
.end method
