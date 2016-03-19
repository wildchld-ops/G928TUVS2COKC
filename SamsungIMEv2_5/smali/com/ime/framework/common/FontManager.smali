.class public interface abstract Lcom/ime/framework/common/FontManager;
.super Ljava/lang/Object;
.source "FontManager.java"


# static fields
.field public static final DEFAULT_FONT_SET_SIZE:I = 0xa

.field public static final FONT_KEY_DROIDSANS:Ljava/lang/String; = "DROIDSANS"

.field public static final FONT_KEY_DROIDSANS_BOLD:Ljava/lang/String; = "DROIDSANS_BOLD"

.field public static final FONT_KEY_HANDWRITING:Ljava/lang/String; = "HANDWRITING"

.field public static final FONT_KEY_ROBOTO_KEYPAD_REGULAR:Ljava/lang/String; = "ROBOTO_KEYPAD_REGULAR"

.field public static final FONT_KEY_ROBOTO_LIGHT:Ljava/lang/String; = "ROBOTO_LIGHT"

.field public static final FONT_KEY_ROBOTO_MEDIUM:Ljava/lang/String; = "ROBOTO_MEDIUM"

.field public static final FONT_KEY_ROBOTO_REGULAR:Ljava/lang/String; = "ROBOTO_REGULAR"

.field public static final FONT_KEY_SAMSUNGSANS_KEYPAD:Ljava/lang/String; = "SAMSUNGSANS_KEYPAD"

.field public static final FONT_KEY_SAMSUNGSANS_NUM3L:Ljava/lang/String; = "SAMSUNGSANS_NUM3L"

.field public static final FONT_KEY_SAMSUNG_KEYPAD_REGULAR:Ljava/lang/String; = "SAMSUNG_KEYPAD_REGULAR"

.field public static final FONT_KEY_SEC_ROBOTO_LIGHT_REGULAR:Ljava/lang/String; = "SEC_ROBOTO_LIGHT_REGULAR"


# virtual methods
.method public abstract addWordIntoTypoList(Ljava/lang/String;)V
.end method

.method public abstract clearTypoList()V
.end method

.method public abstract getControlPopupFont()Landroid/graphics/Typeface;
.end method

.method public abstract getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
.end method

.method public abstract getSystemFont()Landroid/graphics/Typeface;
.end method

.method public abstract initialize(Landroid/content/Context;)V
.end method

.method public abstract isContainInTypoList(Ljava/lang/String;)Z
.end method

.method public abstract refreshContextBuffer(Z)I
.end method
