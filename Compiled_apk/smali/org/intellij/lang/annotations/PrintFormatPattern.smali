.class Lorg/intellij/lang/annotations/PrintFormatPattern;
.super Ljava/lang/Object;
.source "PrintFormat.java"


# static fields
.field private static final ARG_INDEX:Ljava/lang/String; = "(?:\\d+\\$)?"

.field private static final CONVERSION:Ljava/lang/String; = "(?:[tT])?(?:[a-zA-Z%])"

.field private static final FLAGS:Ljava/lang/String; = "(?:[-#+ 0,(<]*)?"

.field private static final PRECISION:Ljava/lang/String; = "(?:\\.\\d+)?"

.field static final PRINT_FORMAT:Ljava/lang/String; = "(?:[^%]|%%|(?:%(?:\\d+\\$)?(?:[-#+ 0,(<]*)?(?:\\d+)?(?:\\.\\d+)?(?:[tT])?(?:[a-zA-Z%])))*"

.field private static final TEXT:Ljava/lang/String; = "[^%]|%%"

.field private static final WIDTH:Ljava/lang/String; = "(?:\\d+)?"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
