.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;
.super Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
.source "TwToolBoxFloatingViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToolBoxCharacter"
.end annotation


# instance fields
.field backgroundOpen:Landroid/graphics/drawable/Drawable;

.field characterType:I

.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->characterType:I

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$3700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10809c6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->backgroundOpen:Landroid/graphics/drawable/Drawable;

    return-void
.end method
